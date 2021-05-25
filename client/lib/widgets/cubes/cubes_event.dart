part of 'cubes_bloc.dart';

@immutable
abstract class CubesEvent {}


class CubesAdd extends CubesEvent{
  final Cube cube;

  CubesAdd(this.cube);
}

class CubesUpdate extends CubesEvent {
  final Cube cube;
  CubesUpdate(this.cube);
}
class CubesDelete extends CubesEvent{
  final Cube cube;
  CubesDelete(this.cube);
}

class CubesList extends CubesEvent{
  final List<Cube> cubes;
  CubesList(this.cubes);
}