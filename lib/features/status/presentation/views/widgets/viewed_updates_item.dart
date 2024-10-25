import 'package:flutter/material.dart';
import 'package:mentor_academy_live_task/features/status/presentation/views/widgets/viewed_status_details.dart';
import 'package:mentor_academy_live_task/features/status/presentation/views/widgets/viewed_status_image.dart';

class ViewedUpdatesItem extends StatelessWidget {
  const ViewedUpdatesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        ViewedStatusImage(),
        SizedBox(
          width: 15,
        ),
        ViewedStatusDetails()
      ],
    );
  }
}
