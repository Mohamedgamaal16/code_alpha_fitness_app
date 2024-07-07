import 'package:flutter/material.dart';
import 'package:fitness_app/core/widgets/custom_button.dart';
import 'package:fitness_app/core/widgets/custom_input_field.dart';

class AddDataView extends StatelessWidget {
  const AddDataView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Your Workout'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Workout Name',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const CustomInputField(
                  showLabel: false,
                  labelText: 'Workout Name',
                  hintText: 'Enter workout name',
                ),
                const SizedBox(height: 16),
                const Text(
                  'Exercises Number',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const CustomInputField(                  showLabel: false,

                  labelText: 'Exercises Number',
                  hintText: 'Enter number of exercises from 1 : 10',
                ),
                const SizedBox(height: 16),
                const Text(
                  'Minutes',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const CustomInputField(                  showLabel: false,

                  labelText: 'Minutes',
                  hintText: 'Enter workout duration in minutes',
                ),
                const SizedBox(height: 20),
                Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 1,
                    child: CustomButton(
                      labelName: 'Add',
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
