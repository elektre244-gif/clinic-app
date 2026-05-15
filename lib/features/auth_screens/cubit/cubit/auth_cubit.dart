import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/features/auth_screens/data/auth_repo.dart';
import 'package:meta/meta.dart';


part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepo repo;

  AuthCubit(this.repo) : super(AuthInitial());

  Future<void> login({
    required String email,
    required String password,
  }) async {
    emit(LoadingAuthState());

    try {
      final user = await repo.login(email, password);

      if (user == null) {
        emit(ErrorAuthState("No’t found this Email"));
        return;
      }
      emit(SuccessAuthState(user: user));

    } catch (e) {
      emit(ErrorAuthState(e.toString()));
    }
  }

 
   Future<void> register({
    required String email,
    required String password,
  }) async {

    emit(LoadingAuthState());

    try {
      final user = await repo.register(
        email: email,
        password: password,
      );

      emit(SuccessAuthState(user: user.user!));

    } catch (e) {
      emit(ErrorAuthState(e.toString()));
    }
  }

}
