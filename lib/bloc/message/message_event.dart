part of 'message_bloc.dart';

@freezed
class MessageEvent with _$MessageEvent {
  const factory MessageEvent.send(Message message) = SendMessageEvent;
  const factory MessageEvent.delete(Message message) = DeleteMessageEvent;
  const factory MessageEvent.loadAll(String conversationUUid) = LoadAllMessagesEvent;
}