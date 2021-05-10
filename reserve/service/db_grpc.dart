import 'package:iwantjob/proto/iwantjob.pbgrpc.dart';
import 'package:iwantjob/service/db.dart';
import 'package:iwantjob/service/grpc_service.dart';
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
    Future<List<u.Cube>?> getList(getListReq req){
      // TODO: implement getList
      throw UnimplementedError();
    }
  
    @override
    Future<String?> uploadImage(UploadImageReq req) {
    // TODO: implement uploadImage
    throw UnimplementedError();
  }

}