import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chatgpt/repository/chat_gpt_repository.dart';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_chatgpt/app_bloc_observer.dart';
import 'package:flutter_chatgpt/cubit/setting_cubit.dart';
import 'package:flutter_chatgpt/route.dart';
import 'package:get_it/get_it.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

import 'bloc/conversation/conversation_bloc.dart';
import 'bloc/message/message_bloc.dart';
import 'bloc/prompt/prompt_bloc.dart';
import 'data/llm.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: await getApplicationDocumentsDirectory());
  // GetIt.instance.registerSingleton<UserSettingCubit>(UserSettingCubit());
  Bloc.observer = const AppBlocObserver();
  PromptBloc promptBloc = PromptBloc();
  promptBloc.add(PromptFetch());
  runApp(RepositoryProvider(
      create: (context) => ChatGptRepository(),
      child: MultiBlocProvider(
          providers: [
            BlocProvider(
                create: (context) =>
                    UserSettingCubit(context.read<ChatGptRepository>()),
              ),
          
            // BlocProvider(
            //   create: (context) => GetIt.instance.get<UserSettingCubit>(),
            // ),
            BlocProvider(
              create: (context) => ConversationBloc(),
            ),
            BlocProvider(
              create: (context) => MessageBloc(context.read<ChatGptRepository>() ,context.read<UserSettingCubit>()),
            ),
            BlocProvider(
              create: (context) => promptBloc,
            ),
          ],
          child: EasyLocalization(
              supportedLocales: const [Locale('en'), Locale('ko')],
              path: 'assets/translations',
              fallbackLocale: const Locale('ko'),
              startLocale: const Locale('ko'),
              child: BlocBuilder<UserSettingCubit, UserSettingState>(
                builder: (context, state) {
                  return MaterialApp.router(
                    theme: state.themeData,
                    routerConfig: gRouter,
                    localizationsDelegates: context.localizationDelegates,
                    supportedLocales: context.supportedLocales,
                    locale: context.locale,
                    builder: EasyLoading.init(),
                    debugShowCheckedModeBanner: false,
                  );
                },
              )))));
}
