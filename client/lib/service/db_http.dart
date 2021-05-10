import '/proto/iwantjob.pb.dart';

import '../units/cube.dart' as u;
import 'db.dart';

class DbHttp extends Db{
  @override
  Future<u.Cube?> createCube(createCubeReq req) {
      // TODO: implement createCube
      throw UnimplementedError();
    }
  
    @override
    Future<List<u.Cube>?> getList(getListReq req) {
      // TODO: implement getList
      throw UnimplementedError();
    }
  
    @override
    Future<String?> uploadImage(UploadImageReq req) {
    // TODO: implement uploadImage
    throw UnimplementedError();
  }
}