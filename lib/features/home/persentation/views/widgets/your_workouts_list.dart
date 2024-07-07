import 'package:fitness_app/features/home/persentation/views/widgets/plans_card.dart';
import 'package:flutter/material.dart';

class YourWorkoutsList extends StatelessWidget {
  const YourWorkoutsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeihght = MediaQuery.of(context).size.height;

    return SizedBox(
      height: screenHeihght * .25,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 1,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10),
            child: PlansCard(
              title: 'Chest',
              exercies: 5,
              minutes: 4,
            ),
          );
        },
      ),
    );
  }
}
