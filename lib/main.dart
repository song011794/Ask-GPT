import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chatgpt/bloc/conversation_bloc.dart';
import 'package:flutter_chatgpt/bloc/message_bloc.dart';
import 'package:flutter_chatgpt/bloc/prompt_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_chatgpt/app_bloc_observer.dart';
import 'package:flutter_chatgpt/cubit/setting_cubit.dart';
import 'package:flutter_chatgpt/route.dart';
import 'package:get_it/get_it.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: await getApplicationDocumentsDirectory());
  GetIt.instance.registerSingleton<UserSettingCubit>(UserSettingCubit());
  Bloc.observer = const AppBlocObserver();
  PromptBloc promptBloc = PromptBloc();
  promptBloc.add(PromptFetch());
  runApp(MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GetIt.instance.get<UserSettingCubit>(),
        ),
        BlocProvider(
          create: (context) => ConversationBloc(),
        ),
        BlocProvider(
          create: (context) => MessageBloc(),
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
        child: BlocConsumer<UserSettingCubit, UserSettingState>(
          listener: (context, state) {
            context.setLocale(state.locale);
          },
          builder: (context, state) {
            return MaterialApp.router(
              theme: state.themeData,
              routerConfig: gRouter,
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              // locale: BlocProvider.of<UserSettingCubit>(context).state.locale,
              locale: context.locale,
              builder: EasyLoading.init(),
              debugShowCheckedModeBanner: false,
            );
          },
        ),
      )));
}
