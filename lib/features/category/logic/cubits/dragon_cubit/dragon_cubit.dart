import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_x/features/category/data/models/dragons_model/dragons_model.dart';
import 'package:space_x/features/category/data/repo/category_repo/category_repo_impl.dart';

part 'dragon_state.dart';

class DragonCubit extends Cubit<DragonState> {
  DragonCubit() : super(DragonInitial());

  CategoryRepoImpl categoryRepoImpl = CategoryRepoImpl();

  fetshAllDragons() async {
    emit(DragonLoading());
    var result = await categoryRepoImpl.getDragons();
    result.fold(
      (errorMessage) => emit(DragonFailure(message: errorMessage)),
      (dragons) => emit(DragonSuccess(dragons: dragons)),
    );
  }
}
