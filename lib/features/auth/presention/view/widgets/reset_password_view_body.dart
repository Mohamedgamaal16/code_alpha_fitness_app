// import 'package:fitness_app/core/utils/app_styles.dart';
// import 'package:fitness_app/core/widgets/custom_button.dart';
// import 'package:fitness_app/core/widgets/custom_input_field.dart';
// import 'package:fitness_app/features/auth/presention/view_model/cubit/auth_cubit.dart';
// import 'package:flutter/material.dart';
// import 'package:fitness_app/core/utils/app_router.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:go_router/go_router.dart';

// class ResetPasswordViewBody extends StatelessWidget {
//   const ResetPasswordViewBody({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<AuthCubit, AuthState>(
//       listener: (context, state) {
//         if (state is AuthSuccess) {
//           GoRouter.of(context).push(AppRouter.kHomeView);
//         } else if (state is AuthFaliure) {
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(
//               content: Text(state.error),
//             ),
//           );
//         }
//       },
//       builder: (context, state) {
//         return SingleChildScrollView(
//           child: SizedBox(
//             height: MediaQuery.of(context).size.height * 1,
//             child: Column(
//               mainAxisSize: MainAxisSize.max,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text("Reset Password",
//                     style: AppStyles.notoSansStyleBold26(context)
//                         .copyWith(color: Colors.black)),
//                 const SizedBox(
//                   height: 30,
//                 ),
//                 const Text(
//                   "Enter your email and we will send you a link to reset your password",
//                 ),
//                 const SizedBox(
//                   height: 30,
//                 ),
//                 CustomInputField(
//                   controller: context.read<AuthCubit>().signInEmail,
//                   labelText: "Email",
//                   hintText: "example@mail.com",
//                 ),
//                 const SizedBox(
//                   height: 30,
//                 ),
//                 SizedBox(
//                   width: MediaQuery.of(context).size.height * 0.9,
//                   child: CustomButton(
//                     labelName: "Sign In",
//                     onPressed: () {
//                       context.read<AuthCubit>().resetPassword();
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
