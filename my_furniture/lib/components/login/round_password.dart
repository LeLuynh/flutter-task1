import 'package:flutter/material.dart';
import '../../constants.dart';
import 'text_field_container.dart';

class RoundPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundPasswordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        obscureText: true,
        decoration: const InputDecoration(
          errorStyle: TextStyle(fontSize: 9, height: 0.3),
          hintText: 'Pasword',
          hintStyle: TextStyle(
            color: kGrayColor,
            fontWeight: FontWeight.w400,
            fontSize: 12,
          ),
          icon: Icon(
            Icons.lock_outlined,
            color: kGrayIcon,
          ),
          suffixIcon: Icon(
            Icons.visibility_off_outlined,
            color: kGrayIcon,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
