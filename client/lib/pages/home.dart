import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).home),
        actions: [
          IconButton(
              onPressed: () {
                DialogService.addImage(context);
              },
              icon: Icon(Icons.add)),
          IconButton(
              onPressed: () {
                BlocProvider.of<AuthenticationBloc>(context).add(AuthenticationLogoutRequested());
              },
              icon: Icon(Icons.logout)),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/test');
              },
              icon: Icon(Icons.text_snippet)),
        ],
      ),
      body: HomeView(),
    );
  }
}
