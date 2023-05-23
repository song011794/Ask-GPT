import 'package:flutter/material.dart';
import 'package:flutter_chatgpt/configs/color_schemes.g.dart';
import 'package:flutter_chatgpt/repository/chat_gpt_repository.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'setting_state.dart';

class UserSettingCubit extends Cubit<UserSettingState> with HydratedMixin {
  ChatGptRepository _chatGptRepository;

  UserSettingCubit(this._chatGptRepository)
      : super(UserSettingState(lightTheme, "", "https://api.openai-proxy.com",
            false, "OpenAI", "gpt-3.5-turbo", "")) {
    hydrate();

    _chatGptRepository.setGptKey(state.key);
    getModelNames();
  }

  get isDarkMode => state.themeData == darkTheme;

  void getModelNames() async {
    List<String> modelNames = await _chatGptRepository.getModels();
    print(modelNames);
  }

  void switchTheme() async {
    emit(UserSettingState(
        state.themeData == lightTheme ? darkTheme : lightTheme,
        state.key,
        state.baseUrl,
        state.useStream,
        state.llm,
        state.gptModel,
        state.glmBaseUrl));
  }

  void setKey(String key) {
    _chatGptRepository.setGptKey(key);

    emit(UserSettingState(state.themeData, key, state.baseUrl, state.useStream,
        state.llm, state.gptModel, state.glmBaseUrl));
  }

  void setProxyUrl(String baseUrl) {
    emit(UserSettingState(state.themeData, state.key, baseUrl, state.useStream,
        state.llm, state.gptModel, state.glmBaseUrl));
  }

  void switchLocale() {
    emit(UserSettingState(state.themeData, state.key, state.baseUrl,
        state.useStream, state.llm, state.gptModel, state.glmBaseUrl));
  }

  void setUseStream(bool useStream) {
    emit(UserSettingState(state.themeData, state.key, state.baseUrl, useStream,
        state.llm, state.gptModel, state.glmBaseUrl));
  }

  void setGptModel(String value) {
    emit(UserSettingState(state.themeData, state.key, state.baseUrl,
        state.useStream, state.llm, value, state.glmBaseUrl));
  }

  void setLlm(String newValue) {
    emit(UserSettingState(state.themeData, state.key, state.baseUrl,
        state.useStream, newValue, state.gptModel, state.glmBaseUrl));
  }

  void setGlmBaseUrl(String text) {
    emit(UserSettingState(state.themeData, state.key, state.baseUrl,
        state.useStream, state.llm, state.gptModel, text));
  }

  void chagneUserSetting(
      String key, String baseUrl, String gptModel, bool useStream) {
    _chatGptRepository.setGptKey(key);
    _chatGptRepository.setGptProxy(baseUrl);

    emit(UserSettingState(state.themeData, key, baseUrl, useStream, state.llm,
        gptModel, state.glmBaseUrl));
  }

  @override
  UserSettingState? fromJson(Map<String, dynamic> json) {
    bool isDark = json['user_theme_value'] as bool;
    String key = json['user_key_value'] as String;
    String baseUrl = json['user_proxy_url_value'] as String;
    bool useStream = json['user_use_stream_value'] as bool;
    String llm = json['user_llm_value'] as String;
    String gptModel = json['user_gpt_model_value'] as String;
    String glmBaseUrl = json['user_glm_base_url_value'] as String;

    return UserSettingState(
        isDark ? darkTheme : lightTheme,
        key,
        baseUrl,
        useStream,
        llm.isEmpty ? "OpenAI" : llm,
        gptModel.isEmpty ? "gpt-3.5-turbo" : gptModel,
        glmBaseUrl);
  }

  @override
  Map<String, dynamic>? toJson(UserSettingState state) {
    return {
      'user_theme_value': state.themeData == darkTheme,
      'user_key_value': state.key,
      'user_proxy_url_value': state.baseUrl,
      'user_use_stream_value': state.useStream,
      'user_llm_value': state.llm,
      'user_gpt_model_value': state.gptModel,
      'user_glm_base_url_value': state.glmBaseUrl
    };
  }
}
