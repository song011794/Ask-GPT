import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chatgpt/components/chat.dart';
import 'package:flutter_chatgpt/components/conversation.dart';
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
    return Scaffold(
      key: _scaffoldKey,
      appBar: useTabs
          ? AppBar(
              title: Text(tr('appTitle')),
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
    );
  }
}
