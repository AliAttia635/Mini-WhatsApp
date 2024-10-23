import 'package:flutter/material.dart';
import 'package:mentor_academy_live_task/core/themes/color_app.dart';
import 'package:mentor_academy_live_task/features/chats/presentation/views/widgets/chat_body.dart';

class ChatsView extends StatelessWidget {
  const ChatsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ChatBody(),
        floatingActionButton: FloatingActionButton(
            backgroundColor: ColorApp.primaryColor,
            onPressed: () {},
            child: const Icon(
              Icons.chat,
              color: Colors.white,
            )));
  }
}
