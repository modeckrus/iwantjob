import 'dart:async';

import 'package:client/localization/localization.dart';
import 'package:client/service/error_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../proto/iwantjob.pbgrpc.dart';

import '../service/db.dart';
import '../units/cube.dart' as u;
import 'cube.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<u.Cube> cubes = [];
  int first = 10;
  int offset = 0;
  String error = '';
  bool hasError = false;
  bool loaded = false;

  void load() async {
    try {
      final ncubes = await GetIt.I
          .get<Db>()
          .getList(getListReq(first: first, offset: offset));
      if (ncubes != null) {
        if (mounted) {
          setState(() {
            cubes.addAll(ncubes);
            first += 10;
            offset += 10;
            loaded = true;
          });
        }
      }
    } catch (e) {
      setState(() {
        hasError = true;
        error = e.toString();
      });
    }
  }

  ScrollController scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    load();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return hasError
        ? ErrorWidget(error)
        : !loaded
            ? Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      MaterialButton(onPressed: (){
                        load();
                      },
                      child: Text(AppLocalizations.of(context).reload),
                      ),
                      CircularProgressIndicator(),
                    ],
                  ),
                ),
              )
            : Container(
                // child:
                // CupertinoScrollbar(
                //   controller: scrollController,
                child: RefreshIndicator(
                    onRefresh: () async {
                      load();
                    },
                    child: cubes.length == 0
                        ? Container(
                          alignment: Alignment.center,
                          child: MaterialButton(
                              onPressed: () {
                                load();
                              },
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Text('Refresh'),
                              ),
                            ),
                        )
                        : ListView.builder(
                            controller: scrollController,
                            itemCount: cubes.length,
                            itemBuilder: (context, index) {
                              final cube = cubes[index];
                              return CubeWidget(cube: cube);
                            })),
                // ),
              );
  }
}
