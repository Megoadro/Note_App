import 'package:flutter/material.dart';

class CustomIconAction extends StatelessWidget {
  const CustomIconAction({super.key, required this.actionIcon});
  final IconData actionIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white.withOpacity(.05),
          ),
          child:  Center(
            child: Icon(actionIcon),
          ),
        );
  }
}