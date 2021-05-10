import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../localization/localization.dart';
import '/login/login.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state.status.isSubmissionFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text(AppLocalizations.of(context).failure)),
            );
        }
      },
      child: Align(
        alignment: const Alignment(0, -1 / 3),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    color: isLogin
                        ? Theme.of(context).buttonColor
                        : Color.fromRGBO(0, 0, 0, 0),
                    child: MaterialButton(
                        onPressed: () {
                          setState(() {
                            isLogin = true;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                            vertical: 5,
                          ),
                          child: Text(
                            AppLocalizations.of(context).login,
                            style: TextStyle(fontSize: 24),
                          ),
                        )),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    color: !isLogin
                        ? Theme.of(context).buttonColor
                        : Color.fromRGBO(0, 0, 0, 0),
                    child: MaterialButton(
                        onPressed: () {
                          setState(() {
                            isLogin = false;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                            vertical: 5,
                          ),
                          child: Text(
                            AppLocalizations.of(context).singup,
                            style: TextStyle(fontSize: 24),
                          ),
                        )),
                  ),
                ),
              ],
            ),
            _UsernameInput(),
            const Padding(padding: EdgeInsets.all(12)),
            _PasswordInput(),
            const Padding(padding: EdgeInsets.all(12)),
            isLogin ? _LoginButton() : _SingUpButton(),
          ],
        ),
      ),
    );
  }
}

class _UsernameInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.username != current.username,
      builder: (context, state) {
        return TextField(
          key: const Key('loginForm_usernameInput_textField'),
          onChanged: (username) =>
              context.read<LoginBloc>().add(LoginUsernameChanged(username)),
          decoration: InputDecoration(
            labelText: AppLocalizations.of(context).username,
            errorText: state.username.invalid
                ? AppLocalizations.of(context).invalidname
                : null,
          ),
        );
      },
    );
  }
}

class _PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return TextField(
          key: const Key('loginForm_passwordInput_textField'),
          onChanged: (password) =>
              context.read<LoginBloc>().add(LoginPasswordChanged(password)),
          obscureText: true,
          decoration: InputDecoration(
            labelText: AppLocalizations.of(context).password,
            errorText: state.password.invalid
                ? AppLocalizations.of(context).invalidpassword
                : null,
          ),
        );
      },
    );
  }
}

class _SingUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return state.status.isSubmissionInProgress
            ? const CircularProgressIndicator()
            : ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: MaterialButton(
                  key: const Key('singupForm_continue_raisedButton'),
                  child: Padding(
                    padding:const EdgeInsets.symmetric(
                            horizontal: 15.0,
                            vertical: 8,
                          ),
                    child: Text(
                      AppLocalizations.of(context).singup,
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  color: state.status.isValidated? Theme.of(context).buttonColor: Color.fromRGBO(0, 0, 0, 0),
                  onPressed: state.status.isValidated
                      ? () {
                          context
                              .read<LoginBloc>()
                              .add(const SingUpSubmitted());
                        }
                      : null,
                ),
              );
      },
    );
  }
}

class _LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return state.status.isSubmissionInProgress
            ? const CircularProgressIndicator()
            : ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: MaterialButton(
                  key: const Key('loginForm_continue_raisedButton'),
                  child: Padding(
                    padding:const EdgeInsets.symmetric(
                            horizontal: 15.0,
                            vertical: 8,
                          ),
                    child: Text(
                      AppLocalizations.of(context).login,
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  color: state.status.isValidated? Theme.of(context).buttonColor: Color.fromRGBO(0, 0, 0, 0),
                  onPressed: state.status.isValidated
                      ? () {
                          context
                              .read<LoginBloc>()
                              .add(const LoginSubmitted());
                        }
                      : null,
                ),
              );
      },
    );
  }
}
