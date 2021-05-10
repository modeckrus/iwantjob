import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'addcube_state.dart';

class AddcubeCubit extends Cubit<AddcubeState> {
  AddcubeCubit() : super(AddcubeInitial());

  void urlChanges(String value) {}
  void sourceChanges(String value) {}
  void typeChanges(String value) {}
}
