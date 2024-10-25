import 'package:flutter/material.dart';
import 'package:mentor_academy_live_task/features/status/presentation/views/widgets/my_status_details.dart';
import 'package:mentor_academy_live_task/features/status/presentation/views/widgets/my_status_image.dart';

class MyStatusItem extends StatelessWidget {
  const MyStatusItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        MyStatusImage(),
        SizedBox(
          width: 15,
        ),
        MyStatusDetails()
      ],
    );
  }
}
