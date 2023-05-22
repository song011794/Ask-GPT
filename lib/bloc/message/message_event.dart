part of 'message_bloc.dart';

@freezed
class MessageEvent with _$MessageEvent {
  const factory MessageEvent.send(Message message) = SendMessageEvent;
  const factory MessageEvent.delete(Message message) = DeleteMessageEvent;
  const factory MessageEvent.loadAll(String conversationUUid) = LoadAllMessagesEvent;
}

// abstract class MessageEvent extends Equatable {
//   const MessageEvent();

//   @override
//   List<Object> get props => [];
// }

// class SendMessageEvent extends MessageEvent {
//   final Message message;

//   const SendMessageEvent(this.message);

//   @override
//   List<Object> get props => [message];
// }

// class DeleteMessageEvent extends MessageEvent {
//   final Message message;

//   const DeleteMessageEvent(this.message);

//   @override
//   List<Object> get props => [message];
// }

// class LoadAllMessagesEvent extends MessageEvent {
//   final String conversationUUid;
//   const LoadAllMessagesEvent(this.conversationUUid);

//   @override
//   List<Object> get props => [conversationUUid];
// }
