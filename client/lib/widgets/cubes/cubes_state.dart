part of 'cubes_bloc.dart';

@immutable
abstract class CubesState {}

class CubesInitial extends CubesState {}

class CubesS extends CubesState{
  final List<Cube> cubes;
  CubesS(this.cubes);
}