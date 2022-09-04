import 'package:flutter/material.dart';

import 'package:hanadal_app/constants/layout.dart' as layout;

class WideTextField extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  const WideTextField(this.hintText, {this.isPassword = false, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: layout.wideButtonWidth,
      child: TextFormField(
        validator: (value) => value!.isEmpty ? hintText : null,
        obscureText: isPassword ? true : false,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(),
          contentPadding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(layout.buttonRadius)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(layout.buttonRadius)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(layout.buttonRadius)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(layout.buttonRadius)),
        ),
        style: const TextStyle(fontSize: layout.wideFontSize),
      ),
    );
  }
}
