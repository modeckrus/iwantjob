import 'dart:async';

import 'package:client/navigatorkey.dart';
import 'package:client/service/error/cubit/error_cubit.dart';

import '../service/authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'authentication/bloc/authentication_bloc.dart';
import 'dark_theme.dart';
import 'localization/lang_codes.dart';
import 'localization/localization.dart';
import 'login/login.dart';
import 'pages/home.dart';
import 'route_generator.dart';
import 'service/user_repository/user_repository.dart';

class MyApp extends StatefulWidget {
  final AuthenticationRepository authenticationRepository;
  final UserRepository userRepository;
  const MyApp(
      {Key? key,
      required this.authenticationRepository,
      required this.userRepository,
      })
      : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: widget.authenticationRepository,
      child: BlocProvider(
        create: (context) => ErrorCubit(),
        child: BlocProvider(
          create: (context) => AuthenticationBloc(
              authenticationRepository: widget.authenticationRepository,
              userRepository: widget.userRepository)
            ..add(AuthenticationAppStart()),
          child: MyAppView(),
        ),
      ),
    );
  }
}

class MyAppView extends StatefulWidget {
  @override
  _MyAppViewState createState() => _MyAppViewState();
}

class _MyAppViewState extends State<MyAppView> {
  GlobalKey<NavigatorState>? _navigatorKey = NavigatorKey.navKey;

  NavigatorState? get _navigator => _navigatorKey?.currentState;
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        switch (state.status) {
          case AuthenticationStatus.authenticated:
          // Navigator.of(context).pushAndRemoveUntil(HomePage.route(),
          //     (route) => false,);
            _navigator?.pushAndRemoveUntil<void>(
              HomePage.route(),
              (route) => false,
            );
            break;
          case AuthenticationStatus.unauthenticated:
            // Navigator.of(context).pushAndRemoveUntil(LoginPage.route(),
            //   (route) => false,);
            _navigator?.pushAndRemoveUntil<void>(
              LoginPage.route(),
              (route) => false,
            );
            break;
          default:
            break;
        }
      },
      child: MaterialApp(
        navigatorKey: _navigatorKey,
        localizationsDelegates: [
          AppLocalizationsDelegate(),
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: LangCodes.locales,
        onGenerateTitle: (BuildContext context) {
          // Jiffy.locale(Localizations.localeOf(context).languageCode)
          //     .then((value) {
          //   print('Jiffy locale setted: ' + value);
          // });
          return AppLocalizations.of(context).title;
        },
        themeMode: ThemeMode.dark,
        // themeMode: ThemeMode.dark,
        darkTheme: MyDartTheme.darkTheme,
        initialRoute: '/splash',
        onGenerateRoute: (settings) {
          return RouteGenerator.onGenerateRouter(settings);
        },
      ),
    );
  }
}
