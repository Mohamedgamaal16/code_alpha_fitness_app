import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<String,String>> signUp(
      {required String email,
      required String password,
      required String confirmPassword});
  Future<Either<String,String>> signIn({required String email, required String password});
  Future<Either<String,String>> resetPassword({
    required String email,
  });
}
