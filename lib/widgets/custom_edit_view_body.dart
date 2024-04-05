import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_app_bar.dart';

class CustomEditViewBody extends StatelessWidget {
  const CustomEditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          
          children: [
            
            SizedBox(height: 50,),
            CustomAppBar(titleAppBar: 'Edit Note',icon:  Icons.done,),
          ],
        ),
      ) ,
    );
  }
}