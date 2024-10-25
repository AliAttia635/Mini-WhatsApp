import 'package:flutter/material.dart';
import 'package:mentor_academy_live_task/core/themes/styles.dart';
import 'package:mentor_academy_live_task/features/status/presentation/views/widgets/recent_updates_status_list_view.dart';

class RecentUpdatesStatusBody extends StatelessWidget {
  const RecentUpdatesStatusBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Recent Updates',
            style: Styles.textStyle16
                .copyWith(fontWeight: FontWeight.bold, color: Colors.grey)),
        const SizedBox(
          height: 8,
        ),
        const RecentUpdatesStatusListView(),
      ],
    );
  }
}
