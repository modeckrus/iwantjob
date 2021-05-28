import 'package:client/localization/localization.dart';
import 'package:client/service/messager/messager.dart';
import 'package:client/service/messager/messager_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'bloc/messager_bloc.dart';

class MessagerPage extends StatefulWidget {
  @override
  _MessagerPageState createState() => _MessagerPageState();
}

class _MessagerPageState extends State<MessagerPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: Text(AppLocalizations.of(context).messages),
              actions: [
                IconButton(onPressed: (){
                  
                  GetIt.I.get<Messager>().GetMessages(from: DateTime.utc(1971), first: 1000).then((value){
                    if(value != null){
                      int count = 0;
                      for (var i = 0; i < value.length; i++) {
                        final message = value[i];
                        GetIt.I.get<Messager>().DeleteMessage(id: message.id).then((deleted){
                        });
                      }
                    }
                  });
                }, icon: Icon(Icons.delete_sweep)),
                IconButton(onPressed: (){
                  for (var i = 0; i < 100; i++) {
                    GetIt.I.get<Messager>().CreateMessage(text: i.toString());
                  }
                  
                  
                  },
                  icon: Icon(Icons.messenger),
                  ),
              ],
            ),
            body: BlocProvider(
          create: (context) => MessagerBloc(),
          child: MessagerView(),
        ),
      ),
    );
  }
}
