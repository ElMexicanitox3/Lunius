import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lunius/blocs/auth/login/login.dart';
import 'package:lunius/repositories/auth/auth_repository.dart';
import 'package:lunius/screens/auth/layout/auth_layout.dart';

class LoginScreen extends StatelessWidget {
  
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthLayout(

      child: BlocProvider(
        create: (context) => LoginBloc(
          authRepository: AuthRepository(),
        ),
        child: BlocListener<LoginBloc, LoginState>(
          listener: (context, state) {
            if (state is LoginSuccess) {
              // TODO: Implement HomeScreen
            }
            if (state is LoginFailure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.error)),
              );
            }
          },
          child: BlocBuilder<LoginBloc, LoginState>(
            builder: (context, state) {
              if (state is LoginLoading) {
                return Center(child: CircularProgressIndicator());
              }
              // return Center(
              //   child: ElevatedButton.icon(
              //     icon: Icon(Icons.login),
              //     label: Text('Iniciar sesión con Google'),
              //     onPressed: () {
              //       context.read<LoginBloc>().add(LoginWithGoogle());
              //     },
              //   ),
              // );

              return Column(
                
                children: [
                  
                ],
              );
            },
          ),
        ),
      ),

    );
  }
}