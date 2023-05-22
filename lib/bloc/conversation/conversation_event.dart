part of 'conversation_bloc.dart';

@freezed
class ConversationEvent with _$ConversationEvent {
  const factory ConversationEvent.add(Conversation conversation) =
      AddConversationEvent;
  const factory ConversationEvent.delete(Conversation conversation) =
      DeleteConversationEvent;
  const factory ConversationEvent.load() = LoadConversationsEvent;
  const factory ConversationEvent.update(Conversation conversation) =
      UpdateConversationEvent;
  const factory ConversationEvent.choose(String conversationUUid) =
      ChooseConversationEvent;
}
