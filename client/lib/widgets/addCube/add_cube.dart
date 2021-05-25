import 'package:client/proto/iwantjob.pb.dart';
import 'package:client/service/db.dart';
import 'package:client/service/user_repository/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../../units/cube.dart' as u;
import '../../widgets/cube.dart';

import '../../localization/localization.dart';
import '../../service/dialog_service.dart';

class AddCubeWidget extends StatefulWidget {
  @override
  _AddCubeWidgetState createState() => _AddCubeWidgetState();
}

class _AddCubeWidgetState extends State<AddCubeWidget> {
  TextEditingController urlController = TextEditingController(text: 'https://i.picsum.photos/id/986/536/354.jpg?hmac=rPmVFe3q6X6hHAiFXMofwKnnRxW635iqMRFuBm_L9Oo');
  TextEditingController sourceController = TextEditingController(text: 'https://i.picsum.photos/id/986/536/354.jpg?hmac=rPmVFe3q6X6hHAiFXMofwKnnRxW635iqMRFuBm_L9Oo');
  TextEditingController typeController = TextEditingController(text: '.jpg');
  @override
  void initState() {
    cube = u.Cube.map(
        fid: GetIt.I.get<User>().id,
        source: 'https://i.picsum.photos/id/986/536/354.jpg?hmac=rPmVFe3q6X6hHAiFXMofwKnnRxW635iqMRFuBm_L9Oo',
        id: '',
        url:
            'https://i.picsum.photos/id/986/536/354.jpg?hmac=rPmVFe3q6X6hHAiFXMofwKnnRxW635iqMRFuBm_L9Oo',
        type: '.jpg');
    super.initState();
    urlController.addListener(() {
      if (mounted) {
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
    typeController.dispose();
    super.dispose();
  }

  late u.Cube cube;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
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
            TextField(
              controller: typeController,
              decoration: InputDecoration(
                labelText: AppLocalizations.of(context).mediatype,
              ),
            ),
            CubeWidget(cube: cube),
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Container(
                color: Theme.of(context).buttonColor,
                child: MaterialButton(
                  onPressed: () async {
                    final cube = await GetIt.I.get<Db>().createCube(createCubeReq(
                        fid: GetIt.I.get<User>().id,
                        source: sourceController.text,
                        url: urlController.text,
                        type: typeController.text));
                    Navigator.pop(context, cube);
                  },
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      AppLocalizations.of(context).addCube,
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
