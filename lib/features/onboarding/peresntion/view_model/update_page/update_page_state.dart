part of 'update_page_cubit.dart';

abstract class UpdatePageState {}

class UpdatePageInitial extends UpdatePageState {}

class UpdatePageChanged extends UpdatePageState {
  final int currentPage;
  UpdatePageChanged(this.currentPage);
}