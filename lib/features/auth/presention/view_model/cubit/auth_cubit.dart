import 'package:bloc/bloc.dart';
import 'package:fitness_app/features/auth/data/repos/auth_repo.dart';
import 'package:flutter/material.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.authRepoImpl) : super(AuthInitial());
   TextEditingController signUpEmail=TextEditingController();
   TextEditingController signUpPassword=TextEditingController();
   TextEditingController signInEmail=TextEditingController();
   TextEditingController signINPassword=TextEditingController();
   TextEditingController resetEmail=TextEditingController();
   TextEditingController signUpConfirmPassword=TextEditingController();

  final AuthRepository authRepoImpl;

  signUp() async {
    emit(AuthLoading());

    try {
      final result = await authRepoImpl.signUp(
        email: signUpEmail.text,
        password: signUpPassword.text,
        confirmPassword: signUpConfirmPassword.text,
      );
      result.fold((error) => emit(AuthFailure(error: error)),
          (success) => emit(AuthSuccess(message: success)));
    } catch (e) {
      emit(AuthFailure(error: e.toString()));
    }
  }

  signIn() async {
    emit(AuthLoading());

    try {
      final result = await authRepoImpl.signIn(
          email: signInEmail.text, password: signINPassword.text);
      result.fold((error) => emit(AuthFailure(error: error)),
          (success) => emit(AuthSuccess(message: success)));
    } catch (e) {
      emit(AuthFailure(error: e.toString()));
    }
  }

  resetPassword() async {
    emit(AuthLoading());

    try {
      final result = await authRepoImpl.resetPassword(email: resetEmail.text);
        result.fold((error) => emit(AuthFailure(error: error)),
          (success) => emit(AuthSuccess(message: success)));
    } catch (e) {
      emit(AuthFailure(error: e.toString()));
    }
  }
}
