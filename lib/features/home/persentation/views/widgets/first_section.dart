import 'package:fitness_app/core/utils/constants.dart';
import 'package:fitness_app/features/home/persentation/views/widgets/horizonatl_container_list.dart';
import 'package:fitness_app/features/home/persentation/views/widgets/vertical_container.dart';
import 'package:flutter/material.dart';

class FirstSection extends StatelessWidget {
  const FirstSection({super.key});

  @override
  Widget build(BuildContext context) {
    return
       const IntrinsicHeight(
         child: Row(
          children: [
            Expanded(
              child: VericalContainer(
                  title: TextConstants.finished,
                  subtitle: TextConstants.completedWorkouts,
                  number: 1),
            ),
                SizedBox(width: 15,),
            HorizontalContainerList()
          ],
               
             ),
       );
  }
}
