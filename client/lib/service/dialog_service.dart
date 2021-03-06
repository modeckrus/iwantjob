import 'package:client/service/messager/message.dart';
import 'package:client/widgets/edit_message.dart';
import 'package:flutter/material.dart';

import '../units/cube.dart';
import '../widgets/addCube/add_cube.dart';

class DialogService {
  static Future<Cube?> addCube(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            child: Container(
              constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height - 50),
              child: AddCubeWidget()
            ),
          );
        });
  }
  static Future<String?> editMessage(BuildContext context, Message message) {
    return showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            child: Container(
              // constraints: BoxConstraints(
              //     maxHeight: MediaQuery.of(context).size.height - 50),
              child: EditMessage(
                message: message
              )
            ),
          );
        });
  }

  static Future<String?> addImage(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            child: AddCubeWidget()
          );
        });
  }
}
