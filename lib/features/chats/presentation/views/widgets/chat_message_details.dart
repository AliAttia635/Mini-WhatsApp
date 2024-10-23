import 'package:flutter/material.dart';
import 'package:mentor_academy_live_task/core/themes/styles.dart';
import 'package:mentor_academy_live_task/features/chats/presentation/views/widgets/unreaded_messages_number.dart';

class ChatMessageDetails extends StatelessWidget {
  final String userName;
  final String userPhone;
  final String messageDate;

  const ChatMessageDetails({
    super.key,
    required this.userName,
    required this.userPhone,
    required this.messageDate,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width / 1.55,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                userName,
                style: Styles.textStyle22,
              ),
              Text(
                messageDate,
                style: Styles.textStyle14.copyWith(color: Colors.grey),
              ),
            ],
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 1.55,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                userPhone,
                style: Styles.textStyle16.copyWith(color: Colors.grey),
              ),
              const UnreadedMessagesNumber()
            ],
          ),
        ),
      ],
    );
  }
}





// Container(
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           Text(
    //             title,
    //             style: Styles.textStyle24,
    //           ),
    //           Text(
    //             phone,
    //             style: Styles.textStyle16.copyWith(color: Colors.grey),
    //           ),
    //         ],
    //       ),
    //       SizedBox(
    //         width: 55,
    //       ),
    //       Column(
    //         crossAxisAlignment: CrossAxisAlignment.end,
    //         children: [
    //           Text(
    //             date,
    //             style: Styles.textStyle16.copyWith(color: Colors.grey),
    //           ),
    //           const UnreadedMessagesNumber()
    //         ],
    //       ),
    //     ],
    //   ),
    // );
