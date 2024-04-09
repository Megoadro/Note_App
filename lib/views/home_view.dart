import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/read_note_cubit/read_notes_cubit.dart';
import 'package:note_app/widgets/custom_body.dart';
import 'package:note_app/widgets/modal_bottom_sheet.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReadNotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                context: context,
                builder: (context) {
                  return const NoteModalBottomSheet();
                });
          },
          backgroundColor: Colors.white,
          child: const Icon(
            Icons.add,
            color: Colors.amber,
          ),
        ),
        body: const CustomBody(),
      ),
    );
  }
}
