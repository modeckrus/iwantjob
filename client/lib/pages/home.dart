import 'package:client/service/auth.dart';
import 'package:client/service/error/cubit/error_cubit.dart';
import 'package:client/service/messager/messager_page.dart';
import 'package:client/widgets/cube_view.dart';
import 'package:client/widgets/cubes/cubes_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '/localization/localization.dart';
import '../authentication/bloc/authentication_bloc.dart';
import '../page_route_transitions.dart';
import '../service/dialog_service.dart';
import '../widgets/home_view.dart';

class HomePage extends StatefulWidget {
  static Route route() {
    return PageRouteTransition(builder: (context) {
      return HomePage();
    });
  }

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  late PageController pageController;
  @override
  void initState() {
    pageController = PageController(initialPage: currentIndex);
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CubesBloc(),
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
            ListTile(
                onTap: () {
                  BlocProvider.of<AuthenticationBloc>(context)
                      .add(AuthenticationLogoutRequested());
                },
                title: Text(AppLocalizations.of(context).logOut),
                leading: Icon(Icons.logout)),
            ListTile(
                onTap: () {
                  Navigator.pushNamed(context, '/test');
                },
                title: Text(AppLocalizations.of(context).test),
                leading: Icon(Icons.text_snippet)),
            Builder(builder: (context) {
              return ListTile(
                  onTap: () {
                    GetIt.I.get<Auth>().refresh();
                  },
                  title: Text(AppLocalizations.of(context).render),
                  leading: Icon(Icons.refresh));
            }),
            ],
          ),
        ),

        body: BlocListener<ErrorCubit, ErrorState>(
          listener: (context, state) {
            if (state is ErrorHasState) {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(state.error.toString())));
            }
          },
          child: MessagerPage(),
        ),
      ),
    );
  }
}
