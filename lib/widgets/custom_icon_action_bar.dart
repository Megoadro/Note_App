import 'package:flutter/material.dart';

class CustomIcomAction extends StatelessWidget {
  const CustomIcomAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white.withOpacity(.05),
          ),
          child: const Center(
            child: Icon(Icons.search),
          ),
        );
  }
}