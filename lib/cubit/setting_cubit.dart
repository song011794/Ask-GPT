import 'package:flutter/material.dart';
import 'package:flutter_chatgpt/configs/color_schemes.g.dart';
import 'package:flutter_chatgpt/repository/chat_gpt_repository.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'setting_state.dart';

class UserSettingCubit extends Cubit<UserSettingState> with HydratedMixin {
  final ChatGptRepository _chatGptRepository;

  UserSettingCubit(this._chatGptRepository)
      : super(UserSettingState(lightTheme, "", "https://api.openai-proxy.com",
            false, "gpt-3.5-turbo")) {
    hydrate();

    // _chatGptRepository.setGptKey(state.key);
    setKey(state.key);
  }

  bool get isDarkMode => state.themeData == darkTheme;

  void switchTheme() async {
    emit(UserSettingState(
      state.themeData == lightTheme ? darkTheme : lightTheme,
      state.key,
      state.baseUrl,
      state.useStream,
      state.gptModel,
    ));
  }

  void setKey(String key) {
    _chatGptRepository.setGptKey(key);

    emit(UserSettingState(
        state.themeData, key, state.baseUrl, state.useStream, state.gptModel));
  }

  void setProxyUrl(String baseUrl) {
    emit(UserSettingState(
        state.themeData, state.key, baseUrl, state.useStream, state.gptModel));
  }

  void setUseStream(bool useStream) {
    emit(UserSettingState(
        state.themeData, state.key, state.baseUrl, useStream, state.gptModel));
  }

  void setGptModel(String value) {
    emit(UserSettingState(
        state.themeData, state.key, state.baseUrl, state.useStream, value));
  }

  void chagneUserSetting(
      String key, String baseUrl, String gptModel, bool useStream) {
    _chatGptRepository.setGptKey(key);
    _chatGptRepository.setGptProxy(baseUrl);

    emit(UserSettingState(state.themeData, key, baseUrl, useStream, gptModel));
  }

  @override
  UserSettingState? fromJson(Map<String, dynamic> json) {
    bool isDark = json['user_theme_value'] as bool;
    String key = json['user_key_value'] as String;
    String baseUrl = json['user_proxy_url_value'] as String;
    bool useStream = json['user_use_stream_value'] as bool;
    String gptModel = json['user_gpt_model_value'] as String;

    return UserSettingState(isDark ? darkTheme : lightTheme, key, baseUrl,
        useStream, gptModel.isEmpty ? "gpt-3.5-turbo" : gptModel);
  }

  @override
  Map<String, dynamic>? toJson(UserSettingState state) {
    return {
      'user_theme_value': state.themeData == darkTheme,
      'user_key_value': state.key,
      'user_proxy_url_value': state.baseUrl,
      'user_use_stream_value': state.useStream,
      'user_gpt_model_value': state.gptModel,
    };
  }
}
