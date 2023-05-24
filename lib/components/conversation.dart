import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_chatgpt/cubit/setting_cubit.dart';
import 'package:flutter_chatgpt/repository/chat_gpt_repository.dart';
import 'package:flutter_chatgpt/repository/conversation_repository.dart';
import 'package:flutter_chatgpt/utils/package.dart';

import '../bloc/conversation/conversation_bloc.dart';
import '../bloc/message/message_bloc.dart';

class ConversationWindow extends StatefulWidget {
  const ConversationWindow({super.key});

  @override
  State<ConversationWindow> createState() => _ConversationWindowState();
}

class _ConversationWindowState extends State<ConversationWindow> {
  String version = '1.0.0';
  @override
  void initState() {
    super.initState();
    BlocProvider.of<ConversationBloc>(context)
        .add(const LoadConversationsEvent());
    getAppVersion().then((value) => setState(() {
          version = value;
        }));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConversationBloc, ConversationState>(
      builder: (context, state) {
        return BlocSelector<UserSettingCubit, UserSettingState, Color>(
          selector: (state) => state.themeData.cardColor,
          builder: (context, colorState) => Container(
            decoration: BoxDecoration(
                color: colorState,
                border: const Border(right: BorderSide(width: .3))),
            constraints: const BoxConstraints(maxWidth: 300),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                state.runtimeType == ConversationInitial ||
                        state.conversations.isEmpty
                    ? Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              tr('noConversationTips'),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      )
                    : Expanded(
                        child: ListView.builder(
                          itemCount: state.conversations.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              onTap: () {
                                _tapConversation(index);
                              },
                              selected: state.currentConversationUuid ==
                                  state.conversations[index].uuid,
                              leading: const Icon(Icons.chat),
                              title: Text(state.conversations[index].name),
                              trailing: Builder(builder: (context) {
                                return IconButton(
                                    onPressed: () {
                                      //오버레이 작업 표시
                                      _showConversationDetail(context, index);
                                    },
                                    icon: const Icon(Icons.more_horiz));
                              }),
                            );
                          },
                        ),
                      ),
                const Divider(thickness: .3),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton.icon(
                        onPressed: () {
                          _showNewConversationDialog(context);
                        },
                        label: Text(tr('newConversation')),
                        icon: const Icon(Icons.add_box),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        label: Text("Version：$version"),
                        icon: const Icon(Icons.info),
                      ),
                      TextButton.icon(
                        onPressed: () {
                          _showSetting(context);
                          // _showSetting();
                        },
                        label: Text(tr('settings')),
                        icon: const Icon(Icons.settings),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  void _showConversationDetail(BuildContext context, int index) {
    final RenderBox button = context.findRenderObject() as RenderBox;
    final RenderBox overlay =
        Overlay.of(context).context.findRenderObject() as RenderBox;
    final RelativeRect position = RelativeRect.fromRect(
      Rect.fromPoints(
        button.localToGlobal(Offset.zero, ancestor: overlay),
        button.localToGlobal(button.size.bottomRight(Offset.zero),
            ancestor: overlay),
      ),
      Offset.zero & overlay.size,
    );
    showMenu(
      context: context,
      position: position,
      items: [
        PopupMenuItem(
          value: "delete",
          child: Text(tr('delete')),
        ),
        PopupMenuItem(
          value: "rename",
          child: Text(tr('reName')),
        ),
      ],
    ).then((value) {
      if (value == "delete") {
        BlocProvider.of<ConversationBloc>(context).add(DeleteConversationEvent(
            context.read<ConversationBloc>().state.conversations[index]));
      } else if (value == "rename") {
        _renameConversation(context, index);
        BlocProvider.of<ConversationBloc>(context).add(UpdateConversationEvent(
            context.read<ConversationBloc>().state.conversations[index]));
      }
    });
  }

  void _showNewConversationDialog(BuildContext context) {
    context.read<ConversationBloc>().add(const ChooseConversationEvent(""));
    context
        .read<MessageBloc>()
        .add(const LoadAllMessagesEvent("new conversation"));
  }

  void _renameConversation(BuildContext context, int index) {
    var outerContext = context;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final TextEditingController controller = TextEditingController();
        controller.text = outerContext
            .read<ConversationBloc>()
            .state
            .conversations[index]
            .name;
        return AlertDialog(
          title: const Text("Rename Conversation"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: controller,
                decoration: InputDecoration(
                  labelText: 'Enter the new name',
                  hintText: 'Enter the new name',
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                ),
                autovalidateMode: AutovalidateMode.always,
                maxLines: null,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                _showSecondConfirm();
              },
              child: const Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                BlocProvider.of<ConversationBloc>(outerContext).add(
                  UpdateConversationEvent(
                    Conversation(
                      name: controller.text,
                      description: "",
                      uuid: outerContext
                          .read<ConversationBloc>()
                          .state
                          .conversations[index]
                          .uuid,
                    ),
                  ),
                );
                Navigator.of(context).pop();
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }

  _showSecondConfirm() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Confirm"),
          content: const Text("Are you sure to cancel?"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }

  _tapConversation(int index) {
    String conversationUUid =
        context.read<ConversationBloc>().state.conversations[index].uuid;
    context
        .read<ConversationBloc>()
        .add(ChooseConversationEvent(conversationUUid));
    context.read<MessageBloc>().add(LoadAllMessagesEvent(conversationUUid));
  }

  void _showSetting(BuildContext context) {
    final TextEditingController controllerApiKey = TextEditingController();

    controllerApiKey.text =
        BlocProvider.of<UserSettingCubit>(context).state.key;

    String froxyUrl = BlocProvider.of<UserSettingCubit>(context).state.baseUrl;
    String gptModel = BlocProvider.of<UserSettingCubit>(context).state.gptModel;

    ValueNotifier useStreamNotifier = ValueNotifier(
        BlocProvider.of<UserSettingCubit>(context).state.useStream);
    ValueNotifier isObscureNotifier = ValueNotifier(true);

    List<Widget> openAiModelSettings(StateSetter setState) => [
          const SizedBox(
            height: 28,
          ),
          ValueListenableBuilder(
            valueListenable: isObscureNotifier,
            builder: (context, state, child) => TextFormField(
              controller: controllerApiKey,
              decoration: InputDecoration(
                labelText: tr('enterKey'),
                hintText: tr('enterKeyTips'),
                floatingLabelBehavior: FloatingLabelBehavior.auto,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.remove_red_eye,
                    color: isObscureNotifier.value ? Colors.grey : Colors.blue,
                  ),
                  onPressed: () {
                    isObscureNotifier.value = !isObscureNotifier.value;
                  },
                ),
              ),
              autovalidateMode: AutovalidateMode.always,
              maxLines: 1,
              obscureText: isObscureNotifier.value,
              onEditingComplete: () {
                context.read<UserSettingCubit>().setKey(controllerApiKey.text);
              },
              onFieldSubmitted: (value) {
                context.read<UserSettingCubit>().setKey(value);
              },
              onSaved: (newValue) {
                context.read<UserSettingCubit>().setKey(newValue ?? '');
              },
            ),
          ),
          const SizedBox(
            height: 28,
          ),
          DropdownButtonFormField(
            isExpanded: true,
            value: BlocProvider.of<UserSettingCubit>(context).state.baseUrl,
            decoration: InputDecoration(
              labelText: tr('setProxyUrlTips'),
              hintText: tr('setProxyUrlTips'),
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide.none,
              ),
              filled: true,
            ),
            items: <String>[
              'https://api.openai-proxy.com',
              'https://api.openai.com'
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: SizedBox(
                  width: 250,
                  child: Text(
                    value,
                    style: const TextStyle(overflow: TextOverflow.ellipsis),
                  ),
                ),
              );
            }).toList(),
            onChanged: (String? newValue) {
              if (newValue == null) return;
              froxyUrl = newValue;
            },
          ),
          const SizedBox(
            height: 28,
          ),
          FutureBuilder<List<String>>(
              future: context.read<ChatGptRepository>().getModels(),
              builder: (context, snapshot) {
                if (snapshot.connectionState != ConnectionState.done) {
                  return const CircularProgressIndicator();
                }
                return DropdownButtonFormField(
                    isExpanded: true,
                    value: BlocProvider.of<UserSettingCubit>(context)
                        .state
                        .gptModel,
                    decoration: InputDecoration(
                      labelText: tr('gptModel'),
                      hintText: tr('gptModel'),
                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,

                      // constraints: BoxConstraints(maxHeight: 10, maxWidth: 10),
                    ),
                    items: snapshot.data!
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: SizedBox(
                          width: 250,
                          child: Text(
                            value,
                            style: const TextStyle(
                                overflow: TextOverflow.ellipsis),
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      if (newValue == null) return;
                      gptModel = newValue;
                    });
              }),
        ];

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(builder: (context, setState) {
          List<Widget> children = [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(tr('useStreamApi')),
                ValueListenableBuilder(
                  valueListenable: useStreamNotifier,
                  builder: (context, state, child) => Switch(
                    value: useStreamNotifier.value,
                    onChanged: (value) {
                      useStreamNotifier.value = value;
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 28,
            ),
          ];

          children.addAll(openAiModelSettings(setState));

          return AlertDialog(
            title: Text(tr('settings')),
            content: SingleChildScrollView(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child:
                    Column(mainAxisSize: MainAxisSize.min, children: children),
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  BlocProvider.of<UserSettingCubit>(context).chagneUserSetting(
                      controllerApiKey.text,
                      froxyUrl,
                      gptModel,
                      useStreamNotifier.value);

                  Navigator.pop(context);
                },
                child: Text(tr('ok')),
              ),
            ],
          );
        });
      },
    );
  }
}
