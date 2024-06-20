import 'package:fitness_app/core/utils/app_styles.dart';
import 'package:fitness_app/core/widgets/custom_button.dart';
import 'package:fitness_app/core/widgets/custom_input_field.dart';
import 'package:fitness_app/core/widgets/loading_indicator.dart';
import 'package:fitness_app/features/auth/presention/view_model/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/core/utils/app_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ResetPasswordViewBody extends StatelessWidget {
  const ResetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccess) {
          GoRouter.of(context).push(AppRouter.kSignInView);
        } 
      },
      builder: (context, state) {
        return SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * .5,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Reset Password",
                    style: AppStyles.notoSansStyleBold26(context)
                        .copyWith(color: Colors.black)),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Enter your email and we will send you a link to reset your password",
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  controller: context.read<AuthCubit>().resetEmail,
                  labelText: "Email",
                  hintText: "example@mail.com",
                ),
                const SizedBox(
                  height: 30,
                ), state is AuthFailure
                    ? Column(
                      children: [
                        Text(
                            state.error,
                            style: const TextStyle(color: Colors.red),
                          ),
                          const SizedBox(height: 15,)
                      ],
                    )
                    : Container(),
               state is AuthLoading
                    ? const CustomLoadingIndicator()
                    : SizedBox(
                  width: MediaQuery.of(context).size.height * 0.9,
                  child: CustomButton(
                    labelName: "Sign In",
                    onPressed: () {
                      context.read<AuthCubit>().resetPassword();
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
