part of 'age_picker_cubit.dart';

@immutable
sealed class AgePickerState {}

final class AgePickerInitial extends AgePickerState {}
final class UpdateValues extends AgePickerState {}
