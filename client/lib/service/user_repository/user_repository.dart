import 'dart:async';
import 'dart:io';

import 'package:client/service/messager/message.dart';
import 'package:client/service/messager/messager_user.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../auth.dart';
import 'models/models.dart';

export './models/models.dart';

class UserRepository {
  Future<void> init() async {
    Hive.registerAdapter<User>(UserAdapter());
    Hive.registerAdapter<Message>(MessageAdapter());
    Hive.registerAdapter<MessagerUser>(MessagerUserAdapter());
    try {
      box = await Hive.openBox<User>('user');
      GetIt.I.registerSingleton<Box<User>>(box, instanceName: 'userBox');
    } catch (e) {
      if(e is FileSystemException){
        if(e.path != null){
          final file = File(e.path!);
          file.deleteSync();
          box = await Hive.openBox<User>('user');
        }
      }
      print(e);
    }
  }
  updateUser(User user){

  }
  User? user;
  late Box<User> box;
  Future<User?> getUser() async {
    if (user != null) {
      GetIt.I.get<Auth>().user = user!;
    }
    final u = GetIt.I.get<Auth>().user;
    if (u.id == '') {
      return null;
    } else {
      if (GetIt.I.isRegistered<User>()) {
        GetIt.I.unregister<User>();
      }
      GetIt.I.registerSingleton<User>(u);
      if (box.length <= 0) {
        box.add(u);
      } else {
        box.putAt(0, u);
      }
      return u;
    }
  }

  Future<User?> cachedUser() async {
    if (box.length == 0) {
      return null;
    } else {
      final u = box.getAt(0);
      
      if (u != null) {
        user = u;
        GetIt.I.get<Auth>().user = user!;
        return u;
      }
      return null;
    }
  }
}
