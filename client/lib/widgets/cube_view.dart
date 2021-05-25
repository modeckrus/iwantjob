import 'package:client/widgets/cube.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubes/cubes_bloc.dart';

class CubeView extends StatefulWidget {
  @override
  _CubeViewState createState() => _CubeViewState();
}

class _CubeViewState extends State<CubeView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CubesBloc(),
      child: BlocBuilder<CubesBloc, CubesState>(
        builder: (context, state) {
          if(state is CubesS){
            final cubes = state.cubes;
            return ListView.builder(
              itemCount: cubes.length,
              itemBuilder: (context, index){
              final cube = cubes[index];
              return CubeWidget(cube: cube);
            });
          }
          return Container();
        },
      ),
    );
  }
}
