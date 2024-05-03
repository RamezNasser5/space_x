import 'package:dartz/dartz.dart';
import 'package:space_x/core/network/services_dio.dart';
import 'package:space_x/features/overview/data/models/companyinfo_models/companyinfo.dart';
import 'package:space_x/features/overview/data/repo/company_info_repo/company_info_repo.dart';

class CompanyInfoRepoImpl implements CompanyInfoRepo {
  @override
  Future<Either<String, CompanyInfo>> getCampanyInfo() async {
    DioServices dioServices = DioServices();
    try {
      Map<String, dynamic> data = await dioServices.get(endPoint: 'company');
      return right(CompanyInfo.fromJson(data));
    } catch (e) {
      return left(e.toString());
    }
  }
}
