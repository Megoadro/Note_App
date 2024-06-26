import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit/cubit/add_note_cubit.dart';
import 'package:note_app/cubits/read_note_cubit/read_notes_cubit.dart';
import 'package:note_app/helper/show_snak_bar.dart';
import 'package:note_app/widgets/add_note_form.dart';

class NoteModalBottomSheet extends StatelessWidget {
  const NoteModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteFailur) {
              print('failed ${state.errMessege}');
            }
            if (state is AddNoteSuccess) {
              BlocProvider.of<ReadNotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
              SnakkBar(context, 'Note Adeed !');

            }
          },
          builder: (context, state) {
            return AbsorbPointer(
              absorbing: state is AddNoteLoading ? true : false,
              child: Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: const SingleChildScrollView(
                  child: AddNoteForm(),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
