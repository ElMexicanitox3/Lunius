import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lunius/repositories/auth/auth_repository.dart';

import 'login_event.dart';
import 'login_state.dart';


class LoginBloc extends Bloc<LoginEvent, LoginState> {
  
  final AuthRepository authRepository;

  LoginBloc({required this.authRepository}) : super(LoginInitial()) {
    on<LoginWithGoogle>(_onLoginWithGoogle);
  }

  Future<void> _onLoginWithGoogle(LoginWithGoogle event, Emitter<LoginState> emit) async {
    emit(LoginLoading());
    try {
      final user = await authRepository.signInWithGoogle();
      emit(LoginSuccess(user));
    } catch (e) {
      emit(LoginFailure(e.toString()));
    }
  }
}