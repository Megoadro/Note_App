part of 'add_note_cubit.dart';

@immutable
abstract class AddNoteState {}

final class AddNoteInitial extends AddNoteState {}

final class AddNoteLoading extends AddNoteState {}

final class AddNoteSuccess extends AddNoteState {}

final class AddNoteFailur extends AddNoteState {
  final String errMessege;

  AddNoteFailur({required this.errMessege});
}
