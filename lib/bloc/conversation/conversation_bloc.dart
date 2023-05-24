import 'package:bloc/bloc.dart';
import 'package:flutter_chatgpt/repository/conversation_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'conversation_bloc.freezed.dart';
part 'conversation_event.dart';
part 'conversation_state.dart';

class ConversationBloc extends Bloc<ConversationEvent, ConversationState> {
  final ConversationRepository _conversationRepository;

  ConversationBloc(this._conversationRepository) : super(ConversationInitial()) {
    on<LoadConversationsEvent>(_onLoadConversationsEvent);

    on<DeleteConversationEvent>(_onDeleteConversationEvent);

    on<UpdateConversationEvent>(_onUpdateConversationEvent);

    on<AddConversationEvent>(_onAddConversationEvent);

    on<ChooseConversationEvent>(_onChooseConversationEvent);
  }

  Future<void> _onChooseConversationEvent(
      ChooseConversationEvent event, Emitter<ConversationState> emit) async {
    final conversations = await _conversationRepository.getConversations();
    emit(ConversationLoaded(conversations, event.conversationUUid));
  }

  Future<void> _onLoadConversationsEvent(
      LoadConversationsEvent event, Emitter<ConversationState> emit) async {
    final conversations = await _conversationRepository.getConversations();
    emit(ConversationLoaded(conversations, state.currentConversationUuid));
  }

  Future<void> _onDeleteConversationEvent(
      DeleteConversationEvent event, Emitter<ConversationState> emit) async {
    await _conversationRepository.deleteConversation(event.conversation.uuid);
    final conversations = await _conversationRepository.getConversations();
    emit(ConversationLoaded(conversations, ""));
  }

  Future<void> _onUpdateConversationEvent(
      UpdateConversationEvent event, Emitter<ConversationState> emit) async {
    await _conversationRepository.updateConversation(event.conversation);
    final conversations = await _conversationRepository.getConversations();
    emit(ConversationLoaded(conversations, event.conversation.uuid));
  }

  Future<void> _onAddConversationEvent(
      AddConversationEvent event, Emitter<ConversationState> emit) async {
    await _conversationRepository.addConversation(event.conversation);
    final conversations = await _conversationRepository.getConversations();
    emit(ConversationLoaded(conversations, event.conversation.uuid));
  }
}
