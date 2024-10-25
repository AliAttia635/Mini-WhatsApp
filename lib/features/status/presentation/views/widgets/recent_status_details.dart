import 'package:flutter/material.dart';
import 'package:mentor_academy_live_task/core/themes/styles.dart';

class RecentStatusDetails extends StatelessWidget {
  const RecentStatusDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Marwan Ali',
            style: Styles.textStyle18.copyWith(color: Colors.black),
          ),
          Text(
            'Today, 12:00 PM',
            style: Styles.textStyle14
                .copyWith(fontWeight: FontWeight.bold, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
