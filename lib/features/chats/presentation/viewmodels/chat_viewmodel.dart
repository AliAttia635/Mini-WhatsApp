import 'package:mentor_academy_live_task/features/chats/data/models/chat_item_model.dart';
import 'package:mentor_academy_live_task/features/chats/presentation/views/widgets/chat_profile_image.dart';

class ChatViewModel {
  ChatProfileImage profileImage = ChatProfileImage();
  List<ChatItemModel> getChatItems() {
    return [
      ChatItemModel(
          userProfileImage: profileImage,
          userName: 'rowan',
          userPhone: '# 01011873749',
          messageDate: '12:00 PM'),
      ChatItemModel(
          userProfileImage: profileImage,
          userName: 'mohab ali',
          userPhone: '# 01150453014',
          messageDate: '12:00 PM'),
      ChatItemModel(
          userProfileImage: profileImage,
          userName: 'marwan ali',
          userPhone: '# 01125727329',
          messageDate: '12:00 PM'),
      // Add more chat items here...
    ];
  }
}
