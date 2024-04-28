import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'core_cubit_state.dart';

class CoreCubitCubit extends Cubit<CoreCubitState> {
  CoreCubitCubit() : super(CoreCubitInitial());
}
