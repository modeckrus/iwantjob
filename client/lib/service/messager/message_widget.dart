import 'package:client/service/dialog_service.dart';
import 'package:client/service/messager/message.dart';
import 'package:client/service/messager/messager.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class MessageWidget extends StatefulWidget {
  final Message message;

  MessageWidget(this.message);
  @override
  _MessageWidgetState createState() => _MessageWidgetState();
}

class _MessageWidgetState extends State<MessageWidget> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.message.text),
      subtitle: Text(widget.message.user.username),
      leading: widget.message.user.role == "admin"
          ? Icon(Icons.admin_panel_settings)
          : Icon(Icons.account_circle),
      trailing: IconButton(
          onPressed: () {
            DialogService.editMessage(context, widget.message);
          },
          icon: Icon(Icons.edit)),
    );
  }
}
