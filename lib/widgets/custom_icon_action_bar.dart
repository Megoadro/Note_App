import 'package:flutter/material.dart';

class CustomIconAction extends StatelessWidget {
  const CustomIconAction({super.key, required this.actionIcon, this.onPressed});
  final IconData actionIcon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(.05),
      ),
      child: Center(
        child: IconButton(
          onPressed: onPressed,
          icon: Icon(actionIcon),
        ),
      ),
    );
  }
}
