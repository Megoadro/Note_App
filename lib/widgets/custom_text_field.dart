import 'package:flutter/material.dart';
import 'package:note_app/helper/contstan.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hintText,
      this.maxLine = 1,
      this.onSaved,
      this.onChanged, this.initialValue});
  final String hintText;
  final int maxLine;
  final String? initialValue;
  final void Function(String?)? onSaved;
  final void Function(String?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue ,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'field is requiard';
        } else {
          return null;
        }
      },
      onChanged: onChanged,
      onSaved: onSaved,
      cursorColor: kPrimaryColor,
      maxLines: maxLine,
      decoration: InputDecoration(
        hintText: hintText,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
    );
  }
}
