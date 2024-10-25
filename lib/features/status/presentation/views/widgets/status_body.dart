import 'package:flutter/material.dart';
import 'package:mentor_academy_live_task/features/status/presentation/views/widgets/my_status_item.dart';
import 'package:mentor_academy_live_task/features/status/presentation/views/widgets/recent_updates_status_body.dart';
import 'package:mentor_academy_live_task/features/status/presentation/views/widgets/viewed_updates_status_body.dart';

class StatusBody extends StatelessWidget {
  const StatusBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 16, right: 16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(),
            SizedBox(
              height: 10,
            ),
            MyStatusItem(),
            SizedBox(height: 16),
            RecentUpdatesStatusBody(),
            ViewedUpdatesStatusBody()
          ],
        ),
      ),
    );
  }
}
