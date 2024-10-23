import 'package:flutter/material.dart';
import 'package:mentor_academy_live_task/features/chats/data/models/chat_item_model.dart';
import 'package:mentor_academy_live_task/features/chats/presentation/viewmodels/chat_viewmodel.dart';
import 'package:mentor_academy_live_task/features/chats/presentation/views/widgets/chat_list_view.dart';

class ChatBody extends StatelessWidget {
  final ChatViewModel chatViewModel = ChatViewModel();
  ChatBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<ChatItemModel> chatItems = chatViewModel.getChatItems();
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Divider(),
          Expanded(
            child: ChatListView(chatItems: chatItems),
          ),
        ],
      ),
    );
  }
}
