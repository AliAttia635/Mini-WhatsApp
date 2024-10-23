import 'package:flutter/material.dart';
import 'package:mentor_academy_live_task/core/themes/color_app.dart';

class UnreadedMessagesNumber extends StatelessWidget {
  const UnreadedMessagesNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 28,
      height: 28,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: ColorApp.primaryColor,
        shape: BoxShape.circle,
      ),
      child: const Text(
        '2',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
