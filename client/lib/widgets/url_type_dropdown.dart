import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'addCube/cubit/addcube_cubit.dart';

class UrlTypeDropdown extends StatefulWidget {
  @override
  _UrlTypeDropdownState createState() => _UrlTypeDropdownState();
}

class _UrlTypeDropdownState extends State<UrlTypeDropdown> {
  String type = 'ru';
  List<String> allowedTypes = [
    '.jpeg',
    '.jpg',
    '.png',
    '.webn',
    '.mp4',
    '.mkv',
    '.gif'
  ];
  @override
  Widget build(BuildContext context) {
    return BlocListener<AddcubeCubit, AddcubeState>(
        listener: (context, state) {
          if (state is AddcubeInitial) {
            setState(() {
              type = '.jpg';
            });
          }
        },
        child: DropdownButton<String>(
          value: type,
          icon: Icon(Icons.arrow_downward),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: Colors.white),
          underline: Container(
            height: 2,
            color: Colors.deepPurpleAccent,
          ),
          onChanged: (String? newValue) {
            if (newValue != null) {
              setState(() {
                type = newValue;
              });
            }
          },
          items: allowedTypes.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            );
          }).toList(),
        ));
  }
}
