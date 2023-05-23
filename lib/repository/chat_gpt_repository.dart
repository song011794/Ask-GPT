import 'package:dart_openai/openai.dart';
import 'package:flutter/material.dart';

import 'conversation.dart';

class ChatGptRepository {
  void setGptKey(String apiKey) {
    OpenAI.apiKey = apiKey;
  }

  void setGptProxy(String baseUrl) {
    OpenAI.baseUrl = baseUrl;
  }

  void postMessage({
    required Message message,
    required ValueChanged<Message> onResponse,
    required ValueChanged<Message> onError,
    required ValueChanged<Message> onSuccess,
    bool useStream = true,
    String gptModel = 'gpt-3.5-turbo',
  }) async {
    List<Message> messages = await ConversationRepository()
        .getMessagesByConversationUUid(message.conversationId);
    getResponse(messages, onResponse, onError, onSuccess, useStream, gptModel);
  }

  Future<List<String>> getModels() async {
    List<OpenAIModelModel> models = [];
    try {
      models = await OpenAI.instance.model.list(); // 지원하는 모델 리스트 가져오기
    } catch (e) {}

    return models.map((e) => e.id).toList();
  }

  void getResponse(
      List<Message> messages,
      ValueChanged<Message> onResponse,
      ValueChanged<Message> errorCallback,
      ValueChanged<Message> onSuccess,
      bool useStream,
      String gptModel) async {
    List<OpenAIChatCompletionChoiceMessageModel> openAIMessages = [];
    // message 반전
    messages = messages.reversed.toList();
    // 메시지에서 각 메시지의 내용을 꺼내 함께 연결
    String content = "";
    for (Message message in messages) {
      content = content + message.text;
      if (content.length < 1800 || openAIMessages.isEmpty) {
        // openAIMessages 첫 번째 위치에 삽입
        openAIMessages.insert(
          0,
          OpenAIChatCompletionChoiceMessageModel(
            content: message.text,
            role: message.role.asOpenAIChatMessageRole,
          ),
        );
      }
    }
    var message = Message(
        conversationId: messages.first.conversationId,
        text: "",
        role: Role.assistant); //첫 번째 문자만 문자를 반환합니다.
    if (useStream) {
      Stream<OpenAIStreamChatCompletionModel> chatStream = OpenAI.instance.chat
          .createStream(model: gptModel, messages: openAIMessages);
      chatStream.listen(
        (chatStreamEvent) {
          if (chatStreamEvent.choices.first.delta.content != null) {
            message.text =
                message.text + chatStreamEvent.choices.first.delta.content!;
            onResponse(message);
          }
        },
        onError: (error) {
          message.text = error.message;
          errorCallback(message);
        },
        onDone: () {
          onSuccess(message);
        },
      );
    } else {
      try {
        var response = await OpenAI.instance.chat.create(
          model: gptModel,
          messages: openAIMessages,
        );
        message.text = response.choices.first.message.content;
        onSuccess(message);
      } catch (e) {
        message.text = e.toString();
        errorCallback(message);
      }
    }
  }
}
