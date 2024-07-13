import 'package:fitness_app/core/utils/app_styles.dart';
import 'package:fitness_app/core/utils/constants.dart';
import 'package:fitness_app/features/calories_calc/peresntaion/view/widgets/custom_list_wheel.dart';
import 'package:fitness_app/features/calories_calc/peresntaion/view_model/age_picker_cubit/age_picker_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HeightPicker extends StatelessWidget {
  const HeightPicker({super.key});

  @override
  Widget build(BuildContext context) {

    return BlocBuilder<AgePickerCubit, AgePickerState>(
      builder: (context, state) {
        final heightPickerCubit = context.read<AgePickerCubit>();

        return Row(
          children: [
            Text("Select Height :",
                style: AppStyles.notoSansStyleBold16(context)),
            Text(
                "${heightPickerCubit.currentHeightMeterValue},${heightPickerCubit.currentHeightCmValue}M ",
                style: AppStyles.notoSansStyleRegular16(context)
                    .copyWith(color: Colors.grey)),
            const Spacer(),
            CustomListWheel(
              heightPickerCubit: heightPickerCubit,
              counter: 4,
            ),
            CustomListWheel(
              heightPickerCubit: heightPickerCubit,
              counter: 100,
              isMeter: false,
            ),
          ],
        );
      },
    );
  }
}
