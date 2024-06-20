import 'package:fitness_app/features/auth/data/repos/auth_repo_imbl.dart';
import 'package:fitness_app/features/auth/presention/view/widgets/sign_up_view_body.dart';
import 'package:fitness_app/features/auth/presention/view_model/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: BlocProvider(
        create: (context) => AuthCubit(AuthRepoImpl()),
        child: const SignUpViewBody(),
      ),
    )));
  }
}
