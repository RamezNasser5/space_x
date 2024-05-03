import 'package:dartz/dartz.dart';
import 'package:space_x/features/home/data/models/crew_info/crew_info.dart';

abstract class CrewInfoRepo {
  Future<Either<String, List<CrewInfo>>> getCrewInfo();
}
