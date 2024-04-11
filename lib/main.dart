import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/cubits/read_note_cubit/read_notes_cubit.dart';
import 'package:note_app/helper/contstan.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/simble_block_observer.dart';
import 'package:note_app/views/home_view.dart';

void main() async {
  Bloc.observer = SimbleBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());

  await Hive.openBox<NoteModel>(kNotesBox);
  runApp(NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReadNotesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Poppins',
        ),
        home: const HomeView(),
      ),
    );
  }
}
