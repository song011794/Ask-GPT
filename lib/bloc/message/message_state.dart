part of 'message_bloc.dart';

/// freezed을 사용하면 messages를 업데이트해도 같은 객체로 판단해 state를 변경하지 않는다.

abstract class MessageState {
  const MessageState();
}

class MessageInitial extends MessageState {}

class MessagesLoaded extends MessageState {
  final List<Message> messages;

  const MessagesLoaded(
    this.messages,
  );
}

class MessageError extends MessageState {
  final String errorMessage;

  const MessageError(this.errorMessage);
}

class MessageSending extends MessageState {
  const MessageSending();
}

class MessageLoading extends MessageState {
  const MessageLoading();
}

/// ChatGPT steaming 回答中
class MessageRelayingState extends MessageState {
  final Message message;
  const MessageRelayingState(this.message);
}
