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
  const UserSettingState(
      this.themeData, this.key, this.baseUrl, this.useStream, this.gptModel);
}
