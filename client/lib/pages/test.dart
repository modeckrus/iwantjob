import 'package:flutter/material.dart';

import '../widgets/addCube/add_cube.dart';


class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: MediaQuery.of(context).size.height - 200,
        width: MediaQuery.of(context).size.width,
        child: AddCubeWidget())
    );
  }
}