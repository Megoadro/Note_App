import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        child: const Icon(
          Icons.add,
          color: Colors.amber,
        ),
      ),
      body: const CustomBody(),
    );
  }
}
