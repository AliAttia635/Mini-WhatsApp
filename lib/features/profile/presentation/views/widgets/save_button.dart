import 'package:flutter/material.dart';
import 'package:mentor_academy_live_task/core/shared_widgets/custome_button.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({
    super.key,
    required this.formKey,
  });

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 60,
      child: CustomButton(
        label: 'Save Profile',
        icon: Icons.save,
        fontSize: 20,
        borderRadius: 35,
        onPressed: () {
          if (formKey.currentState!.validate()) ;
        },
      ),
    );
  }
}
