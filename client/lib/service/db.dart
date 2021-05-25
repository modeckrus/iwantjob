import '/proto/iwantjob.pbgrpc.dart';

import '../units/cube.dart' as u;
import '../units/cube_stream.dart' as u;

abstract class Db{
  Future<List<u.Cube>?> getList(getListReq req);
  Future<u.Cube?> createCube(createCubeReq req);
  Future<String?> uploadImage(UploadImageReq req);
  Stream<u.CubeStream>? streamList();
}