part of 'setting_cubit.dart';

ThemeData darkTheme =
    ThemeData(useMaterial3: true, colorScheme: darkColorScheme);
ThemeData lightTheme =
    ThemeData(useMaterial3: true, colorScheme: lightColorScheme);

class UserSettingState {
  final ThemeData themeData;
  final String key;  
  final String baseUrl;
  final bool useStream;
  final String gptModel;
  final String llm; //大语言模型，OpenAi，ChatGlm，IF
  final String glmBaseUrl;
  const UserSettingState(this.themeData, this.key, this.baseUrl,
      this.useStream, this.llm, this.gptModel, this.glmBaseUrl);
}
