import 'package:client/service/messager/message_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'bloc/messager_bloc.dart';
import 'messager.dart';

class MessagerView extends StatefulWidget {
  @override
  _MessagerViewState createState() => _MessagerViewState();
}

class _MessagerViewState extends State<MessagerView> {
  TextEditingController controller = TextEditingController(text: 'message');
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: BlocBuilder<MessagerBloc, MessagerState>(
            builder: (context, state) {
              if (state is MessagerS) {
                return ListView.builder(
                    itemCount: state.messages.length,
                    itemBuilder: (context, index) {
                      final message = state.messages[index];
                      return MessageWidget(message);
                    });
              }
              return Container();
            },
          ),
        ),
        Row(
          children: [
            Expanded(
              child: TextField(
                controller: controller,
                onEditingComplete: (){
                  GetIt.I.get<Messager>().CreateMessage(text: controller.text);
                  controller.text = "";
                },
              ),
            ),
            IconButton(
                onPressed: () {
                  GetIt.I.get<Messager>().CreateMessage(text: controller.text);
                  controller.text = "";
                },
                icon: Icon(Icons.send))
          ],
        )
      ],
    );
  }
}
