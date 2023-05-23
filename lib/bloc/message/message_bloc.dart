import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chatgpt/cubit/setting_cubit.dart';
import 'package:flutter_chatgpt/repository/chat_gpt_repository.dart';
import 'package:flutter_chatgpt/repository/conversation.dart';
import 'package:flutter_chatgpt/repository/message.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_bloc.freezed.dart';
part 'message_event.dart';
part 'message_state.dart';

class MessageBloc extends Bloc<MessageEvent, MessageState> {
  final ChatGptRepository _chatGptRepository;
  final UserSettingCubit _userSettingCubit;

  MessageBloc(this._chatGptRepository, this._userSettingCubit)
      : super(MessageInitial()) {
    on<SendMessageEvent>(_sendMessageEvent);
    on<DeleteMessageEvent>(_deleteMessageEvent);
    on<LoadAllMessagesEvent>(_loadAllMessagesEvent);
  }

  _sendMessageEvent(SendMessageEvent event, Emitter<MessageState> emit) async {
    await ConversationRepository().addMessage(event.message);
    final messages = await ConversationRepository()
        .getMessagesByConversationUUid(event.message.conversationId);
    emit(MessagesLoaded(messages));
    // wait for all the  state emi
    final completer = Completer();
    try {
      _chatGptRepository.postMessage(
        message: event.message,
        onResponse: (Message message) {
          emit(MessagesLoaded([...messages, message]));
        },
        onError: (Message message) {
          emit(MessagesLoaded([...messages, message]));
        },
        onSuccess: (Message message) async {
          // if streaming is done ,load all the message
          ConversationRepository().addMessage(message);
          final messages = await ConversationRepository()
              .getMessagesByConversationUUid(event.message.conversationId);
          emit(MessagesLoaded(messages));
          completer.complete();
        },
        useStream: _userSettingCubit.state.useStream,
        gptModel: _userSettingCubit.state.gptModel,
      );

      // MessageRepository().postMessage(
      //     message: event.message,
      //     onResponse: (Message message) {
      //       emit(MessagesLoaded([...messages, message]));
      //     },
      //     onError: (Message message) {
      //       emit(MessagesLoaded([...messages, message]));
      //     },
      //     onSuccess: (Message message) async {
      //       // if streaming is done ,load all the message
      //       ConversationRepository().addMessage(message);
      //       final messages = await ConversationRepository()
      //           .getMessagesByConversationUUid(event.message.conversationId);
      //       emit(MessagesLoaded(messages));
      //       completer.complete();
      //     });
    } catch (e) {
      emit(MessageError(e.toString()));
      completer.complete();
    }
    await completer.future;
  }

  _deleteMessageEvent(
      DeleteMessageEvent event, Emitter<MessageState> emit) async {
    try {
      await ConversationRepository().deleteMessage(event.message.id!);
      final messages = await ConversationRepository()
          .getMessagesByConversationUUid(event.message.conversationId);
      emit(MessagesLoaded(messages));
    } catch (e) {
      emit(MessageError(e.toString()));
    }
  }

  _loadAllMessagesEvent(
      LoadAllMessagesEvent event, Emitter<MessageState> emit) async {
    emit(const MessageLoading());
    try {
      final messages = await ConversationRepository()
          .getMessagesByConversationUUid(event.conversationUUid);
      emit(MessagesLoaded(messages));
      if (messages.isEmpty) {
        emit(MessageInitial());
      }
    } catch (e) {
      emit(MessageError(e.toString()));
    }
  }
}
