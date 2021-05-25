import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:client/proto/iwantjob.pb.dart' as p;
import 'package:client/service/db.dart';
import 'package:client/units/cube.dart';
import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';

part 'cubes_event.dart';
part 'cubes_state.dart';

class CubesBloc extends Bloc<CubesEvent, CubesState> {
  CubesBloc() : super(CubesInitial()) {
    GetIt.I.get<Db>().streamList()?.listen((event) {
      switch (event.opType) {
        case 'insert':
          add(CubesAdd(
              Cube(event.fid, event.id, event.url, event.type, event.source)));
          break;
        case 'update':
          add(CubesUpdate(
              Cube(event.fid, event.id, event.url, event.type, event.source)));
          break;
        case 'delete':
          add(CubesDelete(
              Cube(event.fid, event.id, event.url, event.type, event.source)));
          break;
        default:
      }
    });
    GetIt.I.get<Db>().getList(p.getListReq(offset: 0, first: 10)).then((value) {
      if (value != null) {
        add(CubesList(value));
      }
    });
  }
  List<Cube> cubes = [];

  @override
  Stream<CubesState> mapEventToState(
    CubesEvent event,
  ) async* {
    if (event is CubesRefresh) {
      cubes = [];
      GetIt.I
          .get<Db>()
          .getList(p.getListReq(offset: 0, first: 10))
          .then((value) {
        if (value != null) {
          add(CubesList(value));
        }
      });
    }
    if (event is CubesList) {
      for (var i = 0; i < event.cubes.length; i++) {
        final cube = event.cubes[i];
        if (!(cubes.contains(cube))) {
          cubes.add(cube);
        }
      }
      yield CubesS(cubes);
    } else if (event is CubesAdd) {
      if (!(cubes.contains(event.cube))) {
        cubes.add(event.cube);
      }
      yield CubesS(cubes);
    } else if (event is CubesUpdate) {
      for (var i = 0; i < cubes.length; i++) {
        final cube = cubes[i];
        if (cube.id == event.cube) {
          cubes[i] = event.cube;
        }
      }
      yield CubesS(cubes);
    } else if (event is CubesDelete) {
      for (var i = 0; i < cubes.length; i++) {
        final cube = cubes[i];
        if (cube.id == event.cube.id) {
          cubes.removeAt(i);
        }
      }
      yield CubesS(cubes);
    }
  }
}
