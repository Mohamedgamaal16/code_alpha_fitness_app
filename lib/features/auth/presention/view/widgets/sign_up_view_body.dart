import 'package:fitness_app/core/utils/app_router.dart';
import 'package:fitness_app/core/utils/app_styles.dart';
import 'package:fitness_app/core/widgets/custom_button.dart';
import 'package:fitness_app/core/widgets/custom_input_field.dart';
import 'package:fitness_app/core/widgets/custom_sign_footer.dart';
import 'package:fitness_app/core/widgets/loading_indicator.dart';
import 'package:fitness_app/features/auth/presention/view_model/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccess) {
          
          GoRouter.of(context).pushReplacement(AppRouter.kHomeView);
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
                  "Sign Up",
                  style: AppStyles.notoSansStyleBold26(context)
                      .copyWith(color: Colors.black),
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  controller: context.read<AuthCubit>().signUpEmail,
                  labelText: "Email",
                  hintText: "example@mail.com",
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  controller: context.read<AuthCubit>().signUpPassword,
                  labelText: "Password",
                  hintText: "********",
                  obscureText: true,
                  suffixIcon: true,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  controller: context.read<AuthCubit>().signUpConfirmPassword,
                  labelText: "Confirm Password",
                  hintText: "********",
                  obscureText: true,
                  suffixIcon: true,
                ),                const SizedBox(height: 30),

                state is AuthFailure
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
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: CustomButton(
                          labelName: "Sign Up",
                          onPressed: () {
                            context.read<AuthCubit>().signUp();
                          },
                        ),
                      ),
                const SizedBox(height: 50),
                CustomSignFooter(
                  pageName: "Sign In",
                  onTap: () {
                    GoRouter.of(context).pushReplacement(AppRouter.kSignInView);
                  },
                  sentence: "Already have an account?",
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
