import 'package:dartz/dartz.dart';
import 'package:space_x/features/overview/data/models/companyinfo_models/companyinfo.dart';

abstract class CompanyInfoRepo {
  Future<Either<String, CompanyInfo>> getCampanyInfo();
}
