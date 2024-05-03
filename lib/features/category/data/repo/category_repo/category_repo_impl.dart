import 'package:dartz/dartz.dart';
import 'package:space_x/core/network/services_dio.dart';
import 'package:space_x/features/category/data/models/core_model/core_model.dart';
import 'package:space_x/features/category/data/models/dragons_model/dragons_model.dart';
import 'package:space_x/features/category/data/repo/category_repo/category_repo.dart';

class CategoryRepoImpl implements CategoryRepo {
  @override
  Future<Either<String, List<CoreModel>>> getCores() async {
    DioServices dioServices = DioServices();
    List<CoreModel> cores = [];
    try {
      var data = await dioServices.get(endPoint: 'cores');
      for (var item in data) {
        cores.add(CoreModel.fromJson(item));
      }
      return right(cores);
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, List<DragonsModel>>> getDragons() async {
    DioServices dioServices = DioServices();
    List<DragonsModel> dragons = [];
    try {
      var data = await dioServices.get(endPoint: 'dragons');
      for (var item in data) {
        dragons.add(DragonsModel.fromJson(item));
      }
      return right(dragons);
    } catch (e) {
      return left(e.toString());
    }
  }
}
