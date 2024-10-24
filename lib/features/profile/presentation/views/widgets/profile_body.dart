import 'package:flutter/material.dart';
import 'package:mentor_academy_live_task/core/shared_widgets/custome_button.dart';
import 'package:mentor_academy_live_task/core/themes/styles.dart';
import 'package:mentor_academy_live_task/features/profile/presentation/views/widgets/profile_image.dart';
import 'package:mentor_academy_live_task/features/profile/presentation/views/widgets/text_edit_form_field.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
          const TextEditFormField(
            oldValue: 'Marwan Ali',
          ),
          Text(
            'Phone',
            style: Styles.textStyle20
                .copyWith(fontWeight: FontWeight.w500, color: Colors.grey),
          ),
          const TextEditFormField(
            oldValue: '+01125727329',
          ),
          const SizedBox(height: 15),
          Center(
            child: Container(
              width: 300,
              height: 60,
              child: CustomButton(
                label: 'Save Profile',
                onPressed: () {},
                icon: Icons.save,
                fontSize: 20,
                borderRadius: 35,
              ),
            ),
          )
        ],
      ),
    );
  }
}
