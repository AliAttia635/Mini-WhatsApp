import 'package:flutter/material.dart';
import 'package:mentor_academy_live_task/features/status/presentation/views/widgets/recent_status_item.dart';

class RecentUpdatesStatusListView extends StatelessWidget {
  const RecentUpdatesStatusListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(top: 8, bottom: 8),
            child: RecentStatusItem(),
          );
        });
  }
}
