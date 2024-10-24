import 'package:flutter/material.dart';
import 'package:mentor_academy_live_task/core/themes/styles.dart';
import 'package:mentor_academy_live_task/features/calls/presentaion/views/widgets/calls_list_view.dart';
import 'package:mentor_academy_live_task/features/calls/presentaion/views/widgets/call_item.dart';

class CallsBody extends StatelessWidget {
  const CallsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, top: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(),
            Text('Recent',
                style: Styles.textStyle16.copyWith(color: Colors.grey)),
            const CallsListView(),
          ],
        ),
      ),
    );
  }
}
