import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_icon_action_bar.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.titleAppBar});
   final String titleAppBar;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(titleAppBar,style: const TextStyle(fontSize: 30),),
        const Spacer(),
        const CustomIconAction(),
      ],
    );
  }
}
