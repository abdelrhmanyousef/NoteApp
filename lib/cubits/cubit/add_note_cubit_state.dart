part of 'add_note_cubit_cubit.dart';

@immutable
abstract class AddNoteCubitState {}

class AddNoteCubitInitial extends AddNoteCubitState {}

class AddNoteCubitLoading extends AddNoteCubitState {}

class AddNoteCubitSuccess extends AddNoteCubitState {}

class AddNoteCubitFaliur extends AddNoteCubitState {
  final String erromessage;
  AddNoteCubitFaliur(this.erromessage);
}
