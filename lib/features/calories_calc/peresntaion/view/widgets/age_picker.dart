import 'package:fitness_app/core/utils/app_styles.dart';
import 'package:fitness_app/core/utils/constants.dart';
import 'package:fitness_app/features/calories_calc/peresntaion/view_model/age_picker_cubit/age_picker_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:numberpicker/numberpicker.dart';

class AgePicker extends StatelessWidget {
  const AgePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AgePickerCubit, AgePickerState>(
      builder: (context, state) {
        final agePickerCubit = context.read<AgePickerCubit>();

        return Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.white, 
            borderRadius: BorderRadius.circular(20.0), 
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: NumberPicker(
            selectedTextStyle: AppStyles.notoSansStyleBold20(context)
                .copyWith(color: AppColors.primaryColor),
            itemCount: 8,
            axis: Axis.horizontal,
            itemHeight: 45,
            itemWidth: 45,
            minValue: 10,
            maxValue: 100,
            value: agePickerCubit.currentAgeValue,
            onChanged: (value) {
              agePickerCubit.updateAgeVlaue(value);
            },
          ),
        );
      },
    );
  }
}
