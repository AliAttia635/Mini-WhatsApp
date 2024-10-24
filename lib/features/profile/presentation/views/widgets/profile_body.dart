import 'package:flutter/material.dart';
import 'package:mentor_academy_live_task/core/themes/styles.dart';
import 'package:mentor_academy_live_task/features/profile/presentation/views/widgets/Name_edit_form_field.dart';
import 'package:mentor_academy_live_task/features/profile/presentation/views/widgets/phone_edit_form_field.dart';
import 'package:mentor_academy_live_task/features/profile/presentation/views/widgets/profile_image_edit.dart';
import 'package:mentor_academy_live_task/features/profile/presentation/views/widgets/save_button.dart';

class ProfileBody extends StatelessWidget {
  ProfileBody({super.key});
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Divider(),
            const SizedBox(
              height: 15,
            ),
            const ProfileImageEdit(),
            const SizedBox(
              height: 15,
            ),
            const Divider(),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Name',
              style: Styles.textStyle20
                  .copyWith(fontWeight: FontWeight.w500, color: Colors.grey),
            ),
            const NameEditFormField(
              oldValue: 'Marwan Ali',
            ),
            Text(
              'Phone',
              style: Styles.textStyle20
                  .copyWith(fontWeight: FontWeight.w500, color: Colors.grey),
            ),
            const PhoneEditFormField(
              oldValue: '+01125727329',
            ),
            const SizedBox(height: 15),
            Center(
              child: SaveButton(
                formKey: formKey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
