part of 'conversation_bloc.dart';

@freezed
class ConversationState with _$ConversationState {
  factory ConversationState.conversationInitial(
      [@Default([]) List<Conversation> conversations,
      @Default('') String currentConversationUuid]) = ConversationInitial;

  factory ConversationState.conversationLoaded(
    List<Conversation> conversations,
    String currentConversationUuid,
  ) = ConversationLoaded;
}
