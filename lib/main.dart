import 'package:flutter/material.dart';
import 'package:note_app/views/home_view.dart';

void main (){

  runApp(NoteApp());
}
class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeView(),
    );
  }
}