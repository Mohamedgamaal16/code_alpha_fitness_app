
import 'package:fitness_app/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: SizedBox(height: 75,
          child: LoadingIndicator(
            
              indicatorType: Indicator.ballSpinFadeLoader,
          
          
              strokeWidth: 2,
          
              backgroundColor: Colors.transparent,
          
              pathBackgroundColor: Colors.transparent
          
              ),
        ));
  }
}
