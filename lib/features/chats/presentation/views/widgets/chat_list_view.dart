import 'package:flutter/material.dart';
import 'package:mentor_academy_live_task/features/chats/data/models/chat_item_model.dart';
import 'package:mentor_academy_live_task/features/chats/presentation/views/widgets/chat_message_details.dart';

class ChatListView extends StatelessWidget {
  const ChatListView({
    super.key,
    required this.chatItems,
  });

  final List<ChatItemModel> chatItems;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatItems.length,
      itemBuilder: (context, index) {
        ChatItemModel chatItem = chatItems[index];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            children: [
              chatItem.userProfileImage,
              const SizedBox(width: 18),
              ChatMessageDetails(
                  userName: chatItem.userName,
                  userPhone: chatItem.userPhone,
                  messageDate: chatItem.messageDate),
            ],
          ),
        );
      },
    );
  }
}
