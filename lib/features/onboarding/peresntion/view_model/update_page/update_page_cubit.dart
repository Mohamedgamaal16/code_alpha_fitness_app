import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UpdatePageCubit extends Cubit<UpdatePageState> {
  final PageController pageControler = PageController();
  int currentPage = 0;

  UpdatePageCubit() : super(UpdatePageInitial());

  void updatePage(int page) {
    currentPage = page;
    emit(UpdatePageChanged(currentPage));
  }
}

abstract class UpdatePageState {}

class UpdatePageInitial extends UpdatePageState {}

class UpdatePageChanged extends UpdatePageState {
  final int currentPage;
  UpdatePageChanged(this.currentPage);
}
