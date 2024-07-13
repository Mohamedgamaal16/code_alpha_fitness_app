import 'package:fitness_app/core/utils/app_styles.dart';
import 'package:fitness_app/core/utils/constants.dart';
import 'package:fitness_app/features/calories_calc/peresntaion/view_model/age_picker_cubit/age_picker_cubit.dart';
import 'package:flutter/material.dart';

class CustomListWheel extends StatelessWidget {
  const CustomListWheel({
    super.key,
    required this.heightPickerCubit,
    required this.counter,
    this.isMeter = true, // Optional parameter with default of true
  });

  final AgePickerCubit heightPickerCubit;
  final int counter;
  final bool isMeter;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final selectedItem = isMeter
        ? heightPickerCubit.currentHeightMeterValue
        : heightPickerCubit.currentHeightCmValue;
  
    return SizedBox(
      width: screenWidth * 0.15,
      child: ListWheelScrollView.useDelegate(
        itemExtent: 40,
        diameterRatio: .4,
        physics: const FixedExtentScrollPhysics(),
        onSelectedItemChanged: (index) {
          if (isMeter) {
            heightPickerCubit.updatedHeightM(
              index,
            );
          } else {
            heightPickerCubit.updatedHeightCm(index);
          }
        },
        childDelegate: ListWheelChildBuilderDelegate(
          builder: (BuildContext context, int index) {
            final unit = isMeter ? 'm' : 'cm';
            final bool isSelected = selectedItem == index;

            return Center(
              child: Text(
                '$index $unit',
                style: AppStyles.notoSansStyleBold14(context).copyWith(
                  color: isSelected ? AppColors.primaryColor : Colors.black,
                ),
              ),
            );
          },
          childCount: counter,
        ),
      ),
    );
  }
}
