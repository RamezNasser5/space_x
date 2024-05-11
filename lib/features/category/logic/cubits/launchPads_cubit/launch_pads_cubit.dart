import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/models/launch_pads/launch_pads_model.dart';
import '../../../data/repo/category_repo/category_repo_impl.dart';

part 'launch_pads_state.dart';

class LaunchPadsCubit extends Cubit<LaunchPadsState> {
  LaunchPadsCubit() : super(LaunchPadsInitial());
  CategoryRepoImpl categoryRepoImpl = CategoryRepoImpl();
  getLaunchesPads() async {
    emit(LaunchPadsLoading());
    var result = await categoryRepoImpl.getLaunchPads();
    result.fold(
          (message) => emit(LaunchPadsFailure(message: message)),
          (launches) => emit(LaunchPadsSuccess(launches: launches)),
    );
  }
}
