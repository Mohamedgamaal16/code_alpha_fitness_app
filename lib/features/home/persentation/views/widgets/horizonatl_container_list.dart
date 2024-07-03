import 'package:fitness_app/core/utils/constants.dart';
import 'package:fitness_app/features/home/persentation/views/widgets/horizontal_container.dart';
import 'package:flutter/material.dart';

class HorizontalContainerList extends StatelessWidget {
  const HorizontalContainerList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HoriZontalContainer(
          image: ImagesPathes.inprogress,
          title: TextConstants.inprogress,
          subtitle: TextConstants.workouts,
          number: 1,
        ),
        SizedBox(
          height: 15,
        ),
        HoriZontalContainer(
          image: ImagesPathes.stopwatch,
          title: TextConstants.timeSpent,
          subtitle: TextConstants.minutes,
          number: 22,
        ),
      ],
    );
  }
}
