import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/read_note_cubit/read_notes_cubit.dart';
import 'package:note_app/helper/show_snak_bar.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/custom_text_field.dart';
import 'package:note_app/widgets/edit_note_color_list.dart';

class CustomEditViewBody extends StatefulWidget {
  const CustomEditViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<CustomEditViewBody> createState() => _CustomEditViewBodyState();
}

class _CustomEditViewBodyState extends State<CustomEditViewBody> {
  String? title, content;
  int? color;
  @override
  void initState() {
    title = widget.note.title;
    content = widget.note.subTitle;
    color = widget.note.color;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            BlocBuilder<ReadNotesCubit, ReadNotesState>(
              builder: (context, state) {
                return CustomAppBar(
                  canPressed: title != widget.note.title ||
                      content != widget.note.subTitle ||
                      color != widget.note.color,
                  onPressed: () {
                    widget.note.title = title ?? widget.note.title;
                    widget.note.subTitle = content ?? widget.note.subTitle;
                    widget.note.save();
                    Navigator.pop(context);
                    BlocProvider.of<ReadNotesCubit>(context).fetchAllNotes();
                    SnakkBar(context, 'Note Edited !');
                  },
                  titleAppBar: 'Edit Note',
                  icon: Icons.done,
                );
              },
            ),
            const SizedBox(
              height: 32,
            ),
            CustomTextField(
              initialValue: title,
              onChanged: (value) {
                title = value;
                BlocProvider.of<ReadNotesCubit>(context).emitDone();
              },
              hintText: widget.note.title,
            ),
            const SizedBox(
              height: 32,
            ),
            CustomTextField(
              initialValue: content,
              onChanged: (value) {
                content = value;
                BlocProvider.of<ReadNotesCubit>(context).emitDone();
              },
              hintText: widget.note.subTitle,
              maxLine: 5,
            ),
            const SizedBox(
              height: 32,
            ),
            EditNoteColorList(
              
              note: widget.note,
            ),
          ],
        ),
      ),
    );
  }
}
