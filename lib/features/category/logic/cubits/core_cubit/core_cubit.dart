import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_x/features/category/data/models/core_model/core_model.dart';
import 'package:space_x/features/category/data/repo/category_repo/category_repo_impl.dart';

part 'core_state.dart';

class CoreCubit extends Cubit<CoreState> {
  CoreCubit() : super(CoreCubitInitial());

  CategoryRepoImpl categoryRepoImpl = CategoryRepoImpl();

  fetshAllCores() async {
    emit(CoreCubitLoading());
    var result = await categoryRepoImpl.getCores();
    result.fold(
      (errorMessage) => emit(CoreCubitFailure(message: errorMessage)),
      (cores) => emit(CoreCubitSuccess(cores: cores)),
    );
  }
}
