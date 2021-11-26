import 'package:flutter/material.dart';
import 'package:my_furniture/components/login/text_field_container.dart';

import '../../constants.dart';

class RegisterInput extends StatelessWidget {
  final String hintText;
  final ValueChanged<String> onChanged;

  const RegisterInput({
    Key? key,
    required this.hintText,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            color: kGrayColor,
            fontWeight: FontWeight.w400,
            fontSize: 12,
          ),
          border: InputBorder.none,
        ),
     
      ),
    );
  }
}
