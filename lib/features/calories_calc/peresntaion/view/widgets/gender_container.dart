import 'package:fitness_app/core/utils/constants.dart';
import 'package:fitness_app/features/calories_calc/peresntaion/view_model/age_picker_cubit/age_picker_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GenderSelector extends StatelessWidget {
  const GenderSelector({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return BlocBuilder<AgePickerCubit, AgePickerState>(
      builder: (context, state) {
        final genderPickerCubit = context.read<AgePickerCubit>();

        return Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                genderPickerCubit.updatedGender("female");
              },
              child: Container(
                height: screenHight * 0.07,
                width: screenWidth * 0.2,
                decoration: BoxDecoration(
                    color: genderPickerCubit.gender == "female"
                        ? AppColors.primaryColor
                        : AppColors.secondryColor,
                    image: const DecorationImage(
                        image: AssetImage("assets/images/female.png")),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    )),
              ),
            ),
            GestureDetector(
              onTap: () {
                genderPickerCubit.updatedGender("male");
              },
              child: Container(
                height: screenHight * 0.07,
                width: screenWidth * 0.2,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage("assets/images/male.png"),
                    ),
                    color: genderPickerCubit.gender == "male"
                        ? AppColors.primaryColor
                        : AppColors.secondryColor,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    )),
              ),
            )
          ],
        );
      },
    );
  }
}
