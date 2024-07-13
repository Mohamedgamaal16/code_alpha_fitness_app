import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'age_picker_state.dart';

class AgePickerCubit extends Cubit<AgePickerState> {
  AgePickerCubit() : super(AgePickerInitial());

  int currentAgeValue = 25,
      currentHeightMeterValue = 1,
      currentHeightCmValue = 60,
      currentActiveValue = 0;
  String gender = "male";
  updatedGender(String updatedGender) {
    gender = updatedGender;
    emit(UpdateValues());
  }

  updatedHeightM(int updatedHeightMeter) {
    currentHeightMeterValue = updatedHeightMeter;
    emit(UpdateValues());
  }

  updatedHeightCm(int updateHeightCm) {
    currentHeightCmValue = updateHeightCm;
    emit(UpdateValues());
  }

  updateAgeVlaue(int updatedVlaue) {
    currentAgeValue = updatedVlaue;
    emit(UpdateValues());
  }

  updateActiveVlaue(int updatedVlaue) {
    currentActiveValue = updatedVlaue;
    emit(UpdateValues());
  }
}
