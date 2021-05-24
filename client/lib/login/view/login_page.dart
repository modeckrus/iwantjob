import 'package:client/service/error/cubit/error_cubit.dart';

import '../../service/authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/login/login.dart';

class LoginPage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => LoginPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: BlocProvider(
          create: (context) {
            return LoginBloc(
              authenticationRepository:
                  RepositoryProvider.of<AuthenticationRepository>(context),
            );
          },
          child: BlocListener<ErrorCubit, ErrorState>(
            listener: (context, state) {
              if(state is ErrorHasState){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.error.toString())));
              }
            },
            child: LoginForm(),
          ),
        ),
      ),
    );
  }
}
