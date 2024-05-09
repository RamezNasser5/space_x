import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_x/features/category/data/models/launches_model/launches_model.dart';
import 'package:space_x/features/category/data/repo/category_repo/category_repo_impl.dart';

part 'launches_state.dart';

class LaunchesCubit extends Cubit<LaunchesState> {
  LaunchesCubit() : super(LaunchesInitial());

  CategoryRepoImpl categoryRepoImpl = CategoryRepoImpl();

  getLaunches() async {
    emit(LaunchesLaoding());
    var result = await categoryRepoImpl.getLaunches();
    result.fold(
      (messae) => emit(LaunchesFailure(message: messae)),
      (launches) => emit(LaunchesSuccess(launches: launches)),
    );
  }
}
