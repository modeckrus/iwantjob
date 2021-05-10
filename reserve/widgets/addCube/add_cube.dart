import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:iwantjob/units/cube.dart';
import 'package:iwantjob/widgets/cube.dart';
import 'package:user_repository/user_repository.dart';

import '../../localization/localization.dart';
import '../../service/dialog_service.dart';

class AddCubeWidget extends StatefulWidget {
  @override
  _AddCubeWidgetState createState() => _AddCubeWidgetState();
}

class _AddCubeWidgetState extends State<AddCubeWidget> {
  TextEditingController urlController = TextEditingController();
  TextEditingController sourceController = TextEditingController();
  @override
  void initState() {
    cube = Cube.map(
      fid: GetIt.I.get<User>().id, source: '', uid: '', url: 'https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fbestanimations.com%2FHumans%2FSexy%2Fsexy-hot-girl-animated-gif-52.gif&f=1&nofb=1', type: '.jpg');
    super.initState();
    urlController.addListener(() {
      if (mounted){
        setState(() {
          cube = cube.copyWith(url: urlController.text);
        });
      }
    });
    sourceController.addListener(() {
      if (mounted) {
        setState(() {
          cube = cube.copyWith(source: urlController.text);
        });
      }
    });
  }

  @override
  void dispose() {
    urlController.dispose();
    sourceController.dispose();
    super.dispose();
  }

  late Cube cube;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: TextField(
                  controller: urlController,
                  decoration: InputDecoration(
                      labelText: AppLocalizations.of(context).imageUrl),
                ),
              ),
              IconButton(
                  onPressed: () async {
                    final imageUrl = await DialogService.addImage(context);
                    if (imageUrl != null) {
                      urlController.text = imageUrl;
                    }
                  },
                  icon: Icon(Icons.image_search)),
            ],
          ),
          TextField(
            controller: sourceController,
            decoration: InputDecoration(
              labelText: AppLocalizations.of(context).link,
            ),
          ),
          CubeWidget(cube: cube),
        ],
      ),
    );
  }
}
