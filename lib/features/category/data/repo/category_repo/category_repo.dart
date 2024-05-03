import 'package:dartz/dartz.dart';
import 'package:space_x/features/category/data/models/core_model/core_model.dart';
import 'package:space_x/features/category/data/models/dragons_model/dragons_model.dart';

abstract class CategoryRepo {
  Future<Either<String, List<CoreModel>>> getCores();
  Future<Either<String, List<DragonsModel>>> getDragons();
}
