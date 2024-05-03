import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_x/features/home/data/models/crew_info/crew_info.dart';
import 'package:space_x/features/home/data/repo/crew_info_repo.dart/crew_info_repo_impl.dart';

part 'crew_info_state.dart';

class CrewInfoCubit extends Cubit<CrewInfoState> {
  CrewInfoCubit() : super(CrewInfoInitial());

  CrewInfoRepoImpl crewInfoRepoImpl = CrewInfoRepoImpl();

  getCrewInfo() async {
    emit(CrewInfoLoading());
    var result = await crewInfoRepoImpl.getCrewInfo();
    result.fold(
      (errorMessage) => emit(CrewInfoFailure(message: errorMessage)),
      (crewList) => emit(CrewInfoSuccess(crewInfo: crewList)),
    );
  }
}
