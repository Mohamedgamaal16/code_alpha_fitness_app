import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'age_picker_state.dart';

class AgePickerCubit extends Cubit<AgePickerState> {
  AgePickerCubit() : super(AgePickerInitial());

  int currentAgeValue = 25, currentActiveValue = 0;

  updateAgeVlaue(int updatedVlaue) {
    currentAgeValue = updatedVlaue;
    emit(UpdateValues());
  }

  updateActiveVlaue(int updatedVlaue) {
    currentActiveValue = updatedVlaue;
    emit(UpdateValues());
  }
}
