import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class NoteModalBottomSheet extends StatelessWidget {
  const NoteModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomTextField(),
        ],
      ),
    );
  }
}
