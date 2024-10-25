import 'package:flutter/material.dart';
import 'package:mentor_academy_live_task/features/status/presentation/views/widgets/viewed_updates_item.dart';

class ViewdUpdatesStatusListView extends StatelessWidget {
  const ViewdUpdatesStatusListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (context, index) => const Padding(
              padding: EdgeInsets.only(top: 8, bottom: 8),
              child: ViewedUpdatesItem(),
            ));
  }
}
