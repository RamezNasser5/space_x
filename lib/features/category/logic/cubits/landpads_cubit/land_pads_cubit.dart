import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_x/features/category/data/models/land_pads_model/land_pads_model.dart';
import 'package:space_x/features/category/data/repo/category_repo/category_repo_impl.dart';

part 'land_pads_state.dart';

class LandPadsCubit extends Cubit<LandPadsState> {
  LandPadsCubit() : super(LandPadsInitial());

  CategoryRepoImpl categoryRepoImpl = CategoryRepoImpl();

  getAllLandPads() async {
    emit(LandPadsLoading());
    var result = await categoryRepoImpl.getLandPads();
    result.fold(
      (message) => emit(LandPadsFailure(message: message)),
      (landpads) => emit(LandPadsSuccess(landPads: landpads)),
    );
  }
}
