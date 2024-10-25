import 'package:flutter/material.dart';
import 'package:mentor_academy_live_task/features/status/presentation/views/widgets/recent_status_details.dart';
import 'package:mentor_academy_live_task/features/status/presentation/views/widgets/recent_status_image.dart';

class RecentStatusItem extends StatelessWidget {
  const RecentStatusItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        RecentStatusImg(),
        SizedBox(
          width: 15,
        ),
        RecentStatusDetails()
      ],
    );
  }
}
