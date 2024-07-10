import 'package:fitness_app/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/core/utils/app_styles.dart';

Future<dynamic> addExercises(BuildContext context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      TextEditingController nameController = TextEditingController();
      TextEditingController setsController = TextEditingController();

      return AlertDialog(
        backgroundColor: AppColors.secondryColor,
        title: Text(
          'Add Exercise',
          style: AppStyles.notoSansStyleBold20(context),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              cursorColor: AppColors.primaryColor,
              decoration: InputDecoration(
                floatingLabelStyle: AppStyles.notoSansStyleregular14(context)
                    .copyWith(color: AppColors.primaryColor),
                labelText: 'Name',
                hintText: "Exercise name",
                hintStyle: AppStyles.notoSansStyleRegular12(context),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.primaryColor),
                ),
              ),
            ),
            TextField(
              cursorColor: AppColors.primaryColor,
              decoration: InputDecoration(
                floatingLabelStyle: AppStyles.notoSansStyleregular14(context)
                    .copyWith(color: AppColors.primaryColor ),
                labelText: 'Sets',
                hintText: "Number of sets",
                hintStyle: AppStyles.notoSansStyleRegular12(context),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.primaryColor),
                ),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child:
                Text('Add', style: AppStyles.notoSansStyleRegular16(context)),
          ),
        ],
      );
    },
  );
}
