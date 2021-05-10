import '/proto/iwantjob.pbgrpc.dart';

import '../units/cube.dart' as u;

abstract class Db{
  Future<List<u.Cube>?> getList(getListReq req);
  Future<u.Cube?> createCube(createCubeReq req);
  Future<String?> uploadImage(UploadImageReq req);
}