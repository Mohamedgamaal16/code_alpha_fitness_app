import 'package:fitness_app/core/utils/app_styles.dart';
import 'package:fitness_app/core/utils/constants.dart';
import 'package:fitness_app/core/widgets/custom_button.dart';
import 'package:fitness_app/features/calories_calc/peresntaion/view/widgets/active_measure.dart';
import 'package:fitness_app/features/calories_calc/peresntaion/view/widgets/age_picker.dart';
import 'package:fitness_app/features/calories_calc/peresntaion/view/widgets/clac_header.dart';
import 'package:fitness_app/features/calories_calc/peresntaion/view/widgets/gender_container.dart';
import 'package:fitness_app/features/calories_calc/peresntaion/view/widgets/height_picker.dart';
import 'package:fitness_app/features/calories_calc/peresntaion/view/widgets/wieght_slider.dart';
import 'package:flutter/material.dart';

class CalacViewBody extends StatelessWidget {
  const CalacViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenheight = MediaQuery.of(context).size.height;

    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
            child: SizedBox(
          height: 20,
        )),
        SliverToBoxAdapter(
            child: Center(
                child: Text(
         TextConstants.calorieCalculator,
          style: AppStyles.notoSansStyleBold20(context),
        ))),
        const SliverToBoxAdapter(
            child: SizedBox(
          height: 20,
        )),
        const SliverToBoxAdapter(
          child: CalacHeader(),
        ),
        const SliverToBoxAdapter(
            child: SizedBox(
          height: 20,
        )),
        const SliverToBoxAdapter(child: GenderSelector()),
        SliverToBoxAdapter(
            child: Text(
          TextConstants.pickweight,
          style: AppStyles.notoSansStyleBold20(context),
        )),
        const SliverToBoxAdapter(
            child: SizedBox(
          height: 10,
        )),
        const SliverToBoxAdapter(
          child: WeightSlider(),
        ),
        SliverToBoxAdapter(
            child: Text(
          TextConstants.age,
          style: AppStyles.notoSansStyleBold20(context),
        )),
        const SliverToBoxAdapter(
            child: SizedBox(
          height: 10,
        )),
        const SliverToBoxAdapter(
          child: SizedBox(width: 50, child: AgePicker()),
        ),
        const SliverToBoxAdapter(
            child: SizedBox(
          height: 20,
        )),
        const SliverToBoxAdapter(child: NumberSliderWidget()),
        SliverToBoxAdapter(
            child: SizedBox(
          height: screenheight * 0.15,
          child: const HeightPicker(),
        )),
        SliverToBoxAdapter(
            child: SizedBox(
          height: 50,
          child: CustomButton(
            labelName: TextConstants.calculate,
            onPressed: () {},
          ),
        )),
      ],
    );
  }
}
