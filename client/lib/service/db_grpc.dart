import '/proto/iwantjob.pbgrpc.dart';
import '/service/db.dart';
import '/service/grpc_service.dart';
import '../units/cube.dart' as u;

class DBGrpc extends Db{
  @override
  Future<u.Cube?> createCube(createCubeReq req) async {
      final client = GRPCService().client;
      final resp = await DbClient(client).createCube(req);
      
      return u.Cube.map(
        fid: resp.fid,
        uid: resp.uid,
        url: resp.url,
        type: resp.type,
        source: resp.source
      );
    }
  
    @override
    Future<List<u.Cube>?> getList(getListReq req) async {
      final client = GRPCService().client;
      final r = await DbClient(client).getList(req);
      List<u.Cube> cubes = List.filled(r.samples.length, u.Cube.map(fid: 'fid', uid: 'uid', url: 'url', type: 'type', source: 'source'));
      for (var i = 0; i < r.samples.length; i++) {
        final resp = r.samples[i];
        cubes[i] = (u.Cube.map(
        fid: resp.fid,
        uid: resp.uid,
        url: resp.url,
        type: resp.type,
        source: resp.source
      ));
      }
      return cubes;
    }
  
    @override
    Future<String?> uploadImage(UploadImageReq req) {
    // TODO: implement uploadImage
    throw UnimplementedError();
  }

}