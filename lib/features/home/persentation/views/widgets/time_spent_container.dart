import 'package:fitness_app/core/utils/constants.dart';
import 'package:flutter/material.dart';

class TimeSpentContainer extends StatelessWidget {
  const TimeSpentContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      width: screenWidth * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.secondryColor,
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.black.withOpacity(0.12),
        //     blurRadius: 5.0,
        //     spreadRadius: 1.1,
        //   ),
        // ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(height: 10,),
          Row(
            children: [
              Container(
                  height: 60,
                  width:40 ,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/stopwatch.png"),
                          fit: BoxFit.fill))),
              const SizedBox(width: 10),
              const Text(
                "Time Spent",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const Row(
            children: [
              SizedBox(width: 8,),Text(
                "22",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 10),
              Text(
                "Minutes",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(
            height:10,)
        ],
      ),
    );
  }
}
