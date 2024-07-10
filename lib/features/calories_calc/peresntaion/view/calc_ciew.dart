import 'package:fitness_app/features/calories_calc/peresntaion/view/widgets/calc_view_body.dart';
import 'package:fitness_app/features/calories_calc/peresntaion/view_model/age_picker_cubit/age_picker_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalacView extends StatelessWidget {
  const CalacView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: BlocProvider(
          create: (context) => AgePickerCubit(),
          child: const CalacViewBody(),
        ),
      )),
    );
  }
}
