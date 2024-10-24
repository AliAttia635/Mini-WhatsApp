import 'package:flutter/material.dart';
import 'package:mentor_academy_live_task/core/shared_widgets/custom_text_field.dart';

class PhoneEditFormField extends StatelessWidget {
  const PhoneEditFormField({super.key, required this.oldValue});
  final String oldValue;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 35, left: 6, right: 6, top: 10),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.25),
              offset: const Offset(0, 24),
              blurRadius: 6,
              spreadRadius: 0,
            ),
          ],
        ),
        child: CustomTextField(
          initialValue: oldValue,
          borderRadius: 24,
          validator: (val) {
            if (val!.isEmpty) {
              return 'This Field is Required';
            } else {
              return null;
            }
          },
        ),
      ),
    );
  }
}
