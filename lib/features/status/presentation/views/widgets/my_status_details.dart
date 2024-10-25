import 'package:flutter/material.dart';
import 'package:mentor_academy_live_task/core/themes/styles.dart';

class MyStatusDetails extends StatelessWidget {
  const MyStatusDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My Status',
            style: Styles.textStyle18.copyWith(color: Colors.black),
          ),
          Text(
            'Tap to add status update',
            style: Styles.textStyle14
                .copyWith(fontWeight: FontWeight.bold, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
