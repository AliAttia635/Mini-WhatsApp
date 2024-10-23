import 'package:flutter/material.dart';
import 'package:mentor_academy_live_task/features/calls/presentaion/views/widgets/call_details.dart';
import 'package:mentor_academy_live_task/features/calls/presentaion/views/widgets/call_profile_image.dart';

class CallItem extends StatelessWidget {
  const CallItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(children: [
      CallProfileImage(),
      CallDetails(),
    ]);
  }
}
