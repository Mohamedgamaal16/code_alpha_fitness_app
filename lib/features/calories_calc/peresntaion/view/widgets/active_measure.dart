import 'package:fitness_app/core/utils/app_styles.dart';
import 'package:fitness_app/core/utils/constants.dart';
import 'package:fitness_app/features/calories_calc/peresntaion/view_model/age_picker_cubit/age_picker_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NumberSliderWidget extends StatelessWidget {
  const NumberSliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AgePickerCubit, AgePickerState>(
      builder: (context, state) {
        final activePickerCubit = context.read<AgePickerCubit>();

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Active level : ',
                  style: AppStyles.notoSansStyleBold20(context),
                ),
                Text(
                  activePickerCubit.currentActiveValue.round().toString(),
                  style: AppStyles.notoSansStyleBold20(context)
                      .copyWith(color: Colors.grey),
                ),
              ],
            ),
            Slider(
              activeColor: AppColors.primaryColor,
              value: activePickerCubit.currentActiveValue.toDouble(),
              min: 0.0,
              max: 5.0,
              divisions: 5,
              label: activePickerCubit.currentActiveValue.round().toString(),
              onChanged: (value) {
                activePickerCubit.updateActiveVlaue(value.toInt());
              },
            ),
          ],
        );
      },
    );
  }
}
