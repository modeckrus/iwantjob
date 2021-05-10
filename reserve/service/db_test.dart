import 'package:iwantjob/proto/iwantjob.pb.dart';

import '../units/cube.dart' as u;
import 'db.dart';

class DbTest extends Db {

  @override
  Future<u.Cube?> createCube(createCubeReq req) {
    return Future.delayed(Duration(milliseconds: 500), () {
      return null;
      return u.Cube.map(
          fid: '0x1',
          uid: '0x2',
          url:
              'https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fbestanimations.com%2FHumans%2FSexy%2Fsexy-hot-girl-animated-gif-52.gif&f=1&nofb=1',
          type: '.gif',
          source:
              'https://duckduckgo.com/?q=gif&atb=v249-1&ia=images&iax=images');
    });
  }

  @override
  Future<List<u.Cube>?> getList(getListReq req) {
    return Future.delayed(Duration(milliseconds: 500), () {
      return null;
      return List.filled(
        10,
        u.Cube.map(
            fid: '0x1',
            uid: '0x2',
            url:
                'https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fbestanimations.com%2FHumans%2FSexy%2Fsexy-hot-girl-animated-gif-52.gif&f=1&nofb=1',
            type: '.gif',
            source:
                'https://duckduckgo.com/?q=gif&atb=v249-1&ia=images&iax=images'),
      );
    });
  }

  @override
  Future<String?> uploadImage(UploadImageReq req) {
    return Future.delayed(Duration(milliseconds: 500), () {
      return 'https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fbestanimations.com%2FHumans%2FSexy%2Fsexy-hot-girl-animated-gif-52.gif&f=1&nofb=1';
    });
  }
}
