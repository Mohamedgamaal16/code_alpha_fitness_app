import 'package:fitness_app/core/utils/app_styles.dart';
import 'package:fitness_app/core/utils/app_router.dart';
import 'package:fitness_app/core/widgets/custom_button.dart';
import 'package:fitness_app/core/widgets/custom_input_field.dart';
import 'package:fitness_app/core/widgets/custom_sign_footer.dart';
import 'package:fitness_app/core/widgets/loading_indicator.dart';
import 'package:fitness_app/features/auth/presention/view_model/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccess) {
          GoRouter.of(context).push(AppRouter.kHomeView);
        } else if (state is AuthFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.error),
            ),
          );
        }
      },
      builder: (context, state) {
        return SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sign In",
                  style: AppStyles.notoSansStyleBold26(context)
                      .copyWith(color: Colors.black),
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  controller: context.read<AuthCubit>().signInEmail,
                  labelText: "Email",
                  hintText: "example@mail.com",
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  controller:context.read<AuthCubit>().signINPassword,
                  labelText: "Password",
                  hintText: "********",
                  obscureText: true,
                  suffixIcon: true,
                ),
                const SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.kResetPasswordView);
                  },
                  child: Text(
                    "Forgot Password?",
                    style: AppStyles.notoSansStyleBold14(context),
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(height: 30),
                state is AuthLoading
                    ? const CustomLoadingIndicator()
                    : SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: CustomButton(
                          labelName: "Sign In",
                          onPressed: () {
                            context.read<AuthCubit>().signIn();
                          },
                        ),
                      ),
                const SizedBox(height: 50),
                CustomSignFooter(
                  pageName: "Sign Up",
                  onTap: () {
                    GoRouter.of(context).pushReplacement(AppRouter.kSignUp);
                  },
                  sentence: "Don't have an account?",
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
