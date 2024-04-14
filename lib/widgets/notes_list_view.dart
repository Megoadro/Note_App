import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/read_note_cubit/read_notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReadNotesCubit, ReadNotesState>(
      builder: (context, state) {
        List<NoteModel> notesList =
            BlocProvider.of<ReadNotesCubit>(context).notes!;

        if (notesList.isEmpty) {
          return Image.asset('assets/images/alert.png');
        } else {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: notesList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: NoteItem(
                      note: notesList[index],
                    ),
                  );
                }),
          );
        }
      },
    );
  }
}
