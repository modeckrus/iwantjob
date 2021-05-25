import 'package:get_it/get_it.dart';
import 'package:grpc/grpc_connection_interface.dart';
import 'package:grpc/service_api.dart';

import '/proto/iwantjob.pbgrpc.dart';
import '/service/db.dart';
import '/service/grpc_service.dart';
import '../units/cube.dart' as u;
import '../units/cube_stream.dart' as u;
import 'auth.dart';
import 'error_service.dart';

class DBGrpc extends Db {
  @override
  Future<u.Cube?> createCube(createCubeReq req) async {
    try{
    final client = GRPCService().client;
    final options = Map<String, String>();
    options['authorization'] = GetIt.I.get<Auth>().user.token;
    final resp = await DbClient(client)
        .createCube(req, options: CallOptions(metadata: options));

    return u.Cube.map(
        fid: resp.fid,
        id: resp.id,
        url: resp.url,
        type: resp.type,
        source: resp.source);
    }catch(e){
      ErrorService().AddString(e.toString());
    }
  }

  Future<List<u.Cube>?> getListO(getListReq req) async {
    try{
    final client = GRPCService().client;
    final options = Map<String, String>();
    options['authorization'] = GetIt.I.get<Auth>().user.token;
    final r = await DbClient(client)
        .getList(req, options: CallOptions(metadata: options));
    List<u.Cube> cubes = List.filled(
        r.samples.length,
        u.Cube.map(
            fid: 'fid',
            id: 'uid',
            url: 'url',
            type: 'type',
            source: 'source'));
    for (var i = 0; i < r.samples.length; i++) {
      final resp = r.samples[i];
      cubes[i] = (u.Cube.map(
          fid: resp.fid,
          id: resp.id,
          url: resp.url,
          type: resp.type,
          source: resp.source));
    }
    return cubes;
    }catch(e){
      ErrorService().AddString(e.toString());
    }
  }

  @override
  Future<List<u.Cube>?> getList(getListReq req) async {
    try {
      return getListO(req);
    } catch (e) {
      if (e is GrpcError) {
        if (e.code == 3000) {
          print("token expired");
          await GetIt.I.get<Auth>().refresh();
          return getListO(req);
        } else {
          ErrorService().AddString(e.toString());
        }
      } else {
        ErrorService().AddString(e.toString());
      }
      print(e);
    }
  }

  @override
  Future<String?> uploadImage(UploadImageReq req) {
    // TODO: implement uploadImage
    throw UnimplementedError();
  }

  @override
  Stream<u.CubeStream>? streamList() {
    try {
      final client = GRPCService().client;
    final options = Map<String, String>();
    options['authorization'] = GetIt.I.get<Auth>().user.token;
    final r = DbClient(client).streamList(getListReq(first: 10, offset: 0));
    return r.map((event) => u.CubeStream(event.fid, event.id, event.url, event.type, event.source, event.otype));
    } catch (e) {
      if (e is GrpcError) {
        if (e.code == 3000) {
          print("token expired");
        } else {
          ErrorService().AddString(e.toString());
        }
      } else {
        ErrorService().AddString(e.toString());
      }
      print(e);
    }
  }
}
