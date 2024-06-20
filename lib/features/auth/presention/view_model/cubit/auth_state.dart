part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthSuccess extends AuthState {
  final String message;
  AuthSuccess({required this.message});
}

final class AuthLoading extends AuthState {}

final class AuthFailure extends AuthState {
  final String error;
  AuthFailure({required this.error});
}
