import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_icon_action_bar.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.titleAppBar,
    required this.icon,
    this.onPressed,
    this.canPressed = false,
  });
  final bool canPressed;
  final String titleAppBar;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          titleAppBar,
          style: const TextStyle(fontSize: 30),
        ),
        const Spacer(),
        if(canPressed)
        CustomIconAction(
          onPressed: onPressed,
          actionIcon: icon,
        ),
      ],
    );
  }
}
