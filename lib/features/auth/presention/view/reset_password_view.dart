import 'package:fitness_app/core/utils/app_styles.dart';
import 'package:fitness_app/core/utils/constants.dart';
import 'package:fitness_app/core/widgets/custom_button.dart';
import 'package:fitness_app/core/widgets/custom_input_field.dart';
import 'package:fitness_app/core/widgets/custom_sign_footer.dart';
import 'package:fitness_app/features/auth/data/repos/auth_repo_imbl.dart';
import 'package:fitness_app/features/auth/presention/view/widgets/reset_password_view_body.dart';
import 'package:fitness_app/features/auth/presention/view_model/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/core/utils/app_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocProvider(
          create: (context) => AuthCubit(AuthRepoImpl()),
          // child: const ResetPasswordViewBody(),
        ),
      ),
    ));
  }
}
