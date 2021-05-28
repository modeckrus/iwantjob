import 'package:client/localization/localization.dart';
import 'package:client/service/messager/message.dart';
import 'package:client/service/messager/messager.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class EditMessage extends StatefulWidget {
  final Message message;

  const EditMessage({Key? key, required this.message}) : super(key: key);
  @override
  _EditMessageState createState() => _EditMessageState();
}

class _EditMessageState extends State<EditMessage> {
  late TextEditingController controller;
  @override
  void initState() {
    controller = TextEditingController(text: widget.message.text);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: controller,
        ),
        Row(
          children: [
            Spacer(),
            MaterialButton(
              color: Colors.red,
              onPressed: () {
                GetIt.I
                    .get<Messager>()
                    .DeleteMessage(id: widget.message.id)
                    .then((value) {
                  Navigator.pop(context);
                });
              },
              child: Row(
                children: [
                  Icon(Icons.delete),
                  Text(AppLocalizations.of(context).delete),
                ],
              ),
            ),
            MaterialButton(
              onPressed: () {
                GetIt.I
                    .get<Messager>()
                    .UpdateMessage(id: widget.message.id, text: controller.text)
                    .then((value) {
                  Navigator.pop(context);
                });
              },
              child: Text(AppLocalizations.of(context).ok),
            ),
          ],
        )
      ],
    );
  }
}
