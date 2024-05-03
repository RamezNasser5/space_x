import 'package:dartz/dartz.dart';
import 'package:space_x/core/network/services_dio.dart';
import 'package:space_x/features/home/data/models/crew_info/crew_info.dart';
import 'package:space_x/features/home/data/repo/crew_info_repo.dart/crew_info_repo.dart';

class CrewInfoRepoImpl implements CrewInfoRepo {
  @override
  Future<Either<String, List<CrewInfo>>> getCrewInfo() async {
    DioServices dioServices = DioServices();
    List<CrewInfo> crew = [];
    try {
      var data = await dioServices.get(endPoint: 'crew');
      for (var item in data) {
        crew.add(CrewInfo.fromJson(item));
      }
      return right(crew);
    } catch (e) {
      return left(e.toString());
    }
  }
}
