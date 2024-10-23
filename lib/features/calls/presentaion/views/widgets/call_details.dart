import 'package:flutter/material.dart';
import 'package:mentor_academy_live_task/core/themes/styles.dart';

class CallDetails extends StatelessWidget {
  const CallDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.67,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Marwan',
                style: Styles.textStyle20.copyWith(color: Colors.black),
              ),
              const SizedBox(height: 2),
              Text(
                'Today, 10:30 AM',
                style: Styles.textStyle16.copyWith(color: Colors.grey),
              ),
            ],
          ),
          const Icon(Icons.call),
        ],
      ),
    );
  }
}
