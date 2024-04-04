import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_app_bar.dart';

class CustomBody extends StatelessWidget {
  const CustomBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 50,),
        CustomAppBar(),
      ],
    );
  }
}