// import 'package:dart_openai/openai.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter_chatgpt/cubit/setting_cubit.dart';
// import 'package:flutter_chatgpt/data/llm.dart';
// import 'package:flutter_chatgpt/repository/conversation.dart';
// import 'package:get_it/get_it.dart';

// class MessageRepository {
//   void postMessage({
//     required Message message,
//     required ValueChanged<Message> onResponse,
//     required ValueChanged<Message> onError,
//     required ValueChanged<Message> onSuccess,
//   }) async {
//     List<Message> messages = await ConversationRepository()
//         .getMessagesByConversationUUid(message.conversationId);
//     _getResponseFromGpt(messages, onResponse, onError, onSuccess);
//   }

//   void _getResponseFromGpt(
//       List<Message> messages,
//       ValueChanged<Message> onResponse,
//       ValueChanged<Message> errorCallback,
//       ValueChanged<Message> onSuccess) async {

//       ChatGpt().getResponse(messages, onResponse, errorCallback, onSuccess);

//     // String llm = GetIt.instance.get<UserSettingCubit>().state.llm;

//     // switch (llm.toUpperCase()) {
//     //   case "OPENAI":
//     //     ChatGpt().getResponse(messages, onResponse, errorCallback, onSuccess);
//     //     break;
//     //   default:
//     //     ChatGpt().getResponse(messages, onResponse, errorCallback, onSuccess);
//     // }
//   }

//   deleteMessage(int messageId) {
//     ConversationRepository().deleteMessage(messageId);
//   }
// }

// // class MessageRepository {
// //   static final MessageRepository _instance = MessageRepository._internal();

// //   factory MessageRepository() {
// //     return _instance;
// //   }

// //   MessageRepository._internal() {
// //     init();
// //   }

// //   void postMessage({
// //     required Message message,
// //     required ValueChanged<Message> onResponse,
// //     required ValueChanged<Message> onError,
// //     required ValueChanged<Message> onSuccess,
// //   }) async {
// //     List<Message> messages = await ConversationRepository()
// //         .getMessagesByConversationUUid(message.conversationId);
// //     _getResponseFromGpt(messages, onResponse, onError, onSuccess);
// //   }

// //   void init() {
// //     OpenAI.apiKey = GetIt.instance.get<UserSettingCubit>().state.key;
// //     OpenAI.baseUrl = GetIt.instance.get<UserSettingCubit>().state.baseUrl;
// //   }

// //   void _getResponseFromGpt(
// //       List<Message> messages,
// //       ValueChanged<Message> onResponse,
// //       ValueChanged<Message> errorCallback,
// //       ValueChanged<Message> onSuccess) async {
// //     String llm = GetIt.instance.get<UserSettingCubit>().state.llm;

// //     switch (llm.toUpperCase()) {
// //       case "OPENAI":
// //         ChatGpt().getResponse(messages, onResponse, errorCallback, onSuccess);
// //         break;      
// //       default:
// //         ChatGpt().getResponse(messages, onResponse, errorCallback, onSuccess);
// //     }
// //   }

// //   deleteMessage(int messageId) {
// //     ConversationRepository().deleteMessage(messageId);
// //   }
// // }
