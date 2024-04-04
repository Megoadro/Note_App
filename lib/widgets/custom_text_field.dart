import 'package:flutter/material.dart';
import 'package:note_app/helper/contstan.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText,  this.maxLine=1});
   final String hintText;
   final int maxLine;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor:kPrimaryColor ,
      maxLines: maxLine,
      decoration:InputDecoration(
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