import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_icon_action_bar.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text('Notes',style: TextStyle(fontSize: 30),),
        Spacer(),
        CustomIconAction(),
      ],
    );
  }
}
