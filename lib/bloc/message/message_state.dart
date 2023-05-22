part of 'message_bloc.dart';

@freezed
class MessageState with _$MessageState {
  const factory MessageState.init() = MessageInitial;
  const factory MessageState.loaded(List<Message> messages) = MessagesLoaded;
  const factory MessageState.eror(String errorMessage) = MessageError;
  const factory MessageState.sending() = MessageSending;
  const factory MessageState.loading() = MessageLoading;
  const factory MessageState.relaying(Message message) = MessageRelaying;
}


// abstract class MessageState {
//   const MessageState();
// }

// class MessageInitial extends MessageState {}

// class MessagesLoaded extends MessageState {
//   final List<Message> messages;

//   const MessagesLoaded(
//     this.messages,
//   );
// }

// class MessageError extends MessageState {
//   final String errorMessage;

//   const MessageError(this.errorMessage);
// }

// class MessageSending extends MessageState {
//   const MessageSending();
// }

// class MessageLoading extends MessageState {
//   const MessageLoading();
// }

// /// ChatGPT steaming 回答中
// class MessageRelayingState extends MessageState {
//   final Message message;
//   const MessageRelayingState(this.message);
// }
