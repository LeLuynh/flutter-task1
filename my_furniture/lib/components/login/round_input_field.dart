import 'package:flutter/material.dart';

import '../../constants.dart';
import 'text_field_container.dart';

class RoundInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;

  const RoundInputField({
    Key? key,
    required this.hintText,
    this.icon = Icons.mail_outline,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        onChanged: onChanged,
        decoration: InputDecoration(
          errorStyle: const TextStyle(fontSize: 9, height: 0.3),
          hintText: hintText,
          hintStyle: const TextStyle(
            color: kGrayColor,
            fontWeight: FontWeight.w400,
            fontSize: 12,
          ),
          icon: Icon(
            icon,
            color: kGrayIcon,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
