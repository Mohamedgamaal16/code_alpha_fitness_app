import 'package:fitness_app/core/utils/app_styles.dart';
import 'package:fitness_app/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class WeightSlider extends StatelessWidget {
  const WeightSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: Center(
        child: SleekCircularSlider(
          appearance: CircularSliderAppearance(
            size: MediaQuery.of(context).size.width * 0.84,
            customColors: CustomSliderColors(
              trackColor: AppColors.secondryColor,
              progressBarColor: AppColors.primaryColor,
              dotColor: AppColors.primaryColor,
              shadowColor: Colors.grey.shade600,
            ),
            customWidths: CustomSliderWidths(
              trackWidth: 5,
              progressBarWidth: 5,
              handlerSize: 10,
            ),
          ),
          min: 10,
          max: 250,
          initialValue: 65,
          onChange: (value) => {},
          innerWidget: (double value) {
            return Center(
              child: Text('${value.round()} kg',
                  style: AppStyles.notoSansStyleBold34(context)
                      .copyWith(color: AppColors.primaryColor)),
            );
          },
        ),
      ),
    );
  }
}
