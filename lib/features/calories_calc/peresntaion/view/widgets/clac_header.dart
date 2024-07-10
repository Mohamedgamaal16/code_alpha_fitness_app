import 'package:fitness_app/core/utils/app_styles.dart';
import 'package:fitness_app/core/utils/constants.dart';
import 'package:fitness_app/features/calories_calc/peresntaion/view/widgets/calcuted_calc.dart';
import 'package:flutter/material.dart';

class CalacHeader extends StatelessWidget {
  const CalacHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.secondryColor, 
        border: Border.all(
          color: Colors.grey, 
          width:1, 
        ),
        boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3), 
              ),
            ],
        borderRadius: BorderRadius.circular(10.0), 
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Estimated Daily Calorie Intake",
            style: AppStyles.notoSansStyleBold16(context),
          ),
          const SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: CalacutedCaloreis(
                  title: 'To maintain weight',
                  calc: 2200,
                ),
              ),
              Flexible(
                child: CalacutedCaloreis(
                  title: 'To lose weight',
                  calc: 2200,
                ),
              ),
              
              Expanded(
                child: CalacutedCaloreis(
                  title: 'To lose weight fast',
                  calc: 2200,
                ),
              ),
             
            ],
          )
        ],
      ),
    );
  }
}
