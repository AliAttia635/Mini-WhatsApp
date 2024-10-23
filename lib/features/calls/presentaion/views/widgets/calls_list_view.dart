import 'package:flutter/material.dart';
import 'package:mentor_academy_live_task/features/calls/presentaion/views/widgets/call_item.dart';

class CallsListView extends StatelessWidget {
  const CallsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: const CallItem(),
      ),
    );
  }
}
