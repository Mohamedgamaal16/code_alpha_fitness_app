import 'package:fitness_app/core/utils/app_styles.dart';
import 'package:fitness_app/features/calories_calc/peresntaion/view/widgets/active_measure.dart';
import 'package:fitness_app/features/calories_calc/peresntaion/view/widgets/age_picker.dart';
import 'package:fitness_app/features/calories_calc/peresntaion/view/widgets/clac_header.dart';
import 'package:fitness_app/features/calories_calc/peresntaion/view/widgets/wieght_slider.dart';
import 'package:flutter/material.dart';

class CalacViewBody extends StatelessWidget {
  const CalacViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
            child: SizedBox(
          height: 20,
        )),
        SliverToBoxAdapter(
            child: Center(
                child: Text(
          "Calorie Calculator",
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
        SliverToBoxAdapter(
            child: Text(
          "Pick weight",
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
          "Age",
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
        SliverToBoxAdapter(child: NumberSliderWidget()),
      ],
    );
  }
}
