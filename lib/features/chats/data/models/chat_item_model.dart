import 'package:mentor_academy_live_task/features/chats/presentation/views/widgets/chat_profile_image.dart';

class ChatItemModel {
  final ChatProfileImage userProfileImage;
  final String userName;
  final String userPhone;
  final String messageDate;

  ChatItemModel({
    required this.userProfileImage,
    required this.userName,
    required this.userPhone,
    required this.messageDate,
  });
}
