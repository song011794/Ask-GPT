import 'package:dart_openai/openai.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_chatgpt/cubit/setting_cubit.dart';
import 'package:flutter_chatgpt/repository/conversation_repository.dart';
import 'package:get_it/get_it.dart';

abstract class LLM {
  void getResponse(List<Message> messages, ValueChanged<Message> onResponse,
      ValueChanged<Message> errorCallback, ValueChanged<Message> onSuccess);

  Future getModelNames();
}

class ChatGpt extends LLM {
  @override
  void getResponse(
    List<Message> messages,
    ValueChanged<Message> onResponse,
    ValueChanged<Message> errorCallback,
    ValueChanged<Message> onSuccess,
  ) async {
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
    if (GetIt.instance.get<UserSettingCubit>().state.useStream) {
      Stream<OpenAIStreamChatCompletionModel> chatStream = OpenAI.instance.chat
          .createStream(
              model: GetIt.instance.get<UserSettingCubit>().state.gptModel,
              messages: openAIMessages);
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
          model: GetIt.instance.get<UserSettingCubit>().state.gptModel,
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

  @override
  Future getModelNames() async {
    List<OpenAIModelModel> models = await OpenAI.instance.model.list();

    List test = models.map((e) => e.id).toList();
    print(test);
  }
}
