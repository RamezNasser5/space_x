import 'package:dartz/dartz.dart';
import 'package:space_x/features/category/data/models/core_model/core_model.dart';
import 'package:space_x/features/category/data/models/dragons_model/dragons_model.dart';
import 'package:space_x/features/category/data/models/land_pads_model/land_pads_model.dart';
import 'package:space_x/features/category/data/models/launches_model/launches_model.dart';

import '../../models/launch_pads/launch_pads_model.dart';

abstract class CategoryRepo {
  Future<Either<String, List<CoreModel>>> getCores();
  Future<Either<String, List<DragonsModel>>> getDragons();
  Future<Either<String, List<LandPadsModel>>> getLandPads();
  Future<Either<String, List<LaunchesModel>>> getLaunches();
  Future<Either<String, List<LaunchPads>>> getLaunchPads();
}
