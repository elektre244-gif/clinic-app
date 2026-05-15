part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class LoadingAuthState extends AuthState {}

final class SuccessAuthState extends AuthState {
  final User? user;

  SuccessAuthState({required this.user});
}

final class ErrorAuthState extends AuthState {
   final String message;
  ErrorAuthState(this.message);
}

