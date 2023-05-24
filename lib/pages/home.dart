import 'package:country_picker/country_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chatgpt/components/chat.dart';
import 'package:flutter_chatgpt/components/conversation.dart';
import 'package:flutter_chatgpt/cubit/setting_cubit.dart';
import 'package:flutter_chatgpt/device/form_factor.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    bool useTabs = MediaQuery.of(context).size.width < FormFactor.tablet;
    return BlocBuilder<UserSettingCubit, UserSettingState>(
      builder: (context, state) => Scaffold(
        key: _scaffoldKey,
        appBar: useTabs
            ? AppBar(
                title: Text(tr('appTitle')),
                centerTitle: true,
                actions: [
                  IconButton(
                      onPressed: () {
                        showCountryPicker(
                          context: context,
                          countryFilter: List<String>.from(["KR", 'US', 'GB']),
                          showPhoneCode:
                              false, // optional. Shows phone code before the country name.

                          onSelect: (Country country) async {
                            await context.setLocale(country.countryCode == 'KR'
                                ? const Locale('ko')
                                : const Locale('en'));
                          },
                        );
                      },
                      icon: const Icon(Icons.language)),
                  IconButton(
                      onPressed: () {
                        context.read<UserSettingCubit>().switchTheme();
                      },
                      icon: Icon(context.watch<UserSettingCubit>().isDarkMode
                          ? Icons.wb_sunny_outlined
                          : Icons.sunny))
                ],
              )
            : null,
        drawer: useTabs ? const ConversationWindow() : null,
        body: Stack(
          children: [
            Row(
              children: [
                if (!useTabs) const ConversationWindow(),
                const ChatWindow()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
