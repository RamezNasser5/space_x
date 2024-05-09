import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:space_x/core/routing/app_router.dart';
import 'package:space_x/features/overview/logic/campany_info/campany_info_cubit.dart';

class HelperClass {
  final List<String> categories = [
    'cores',
    'dragons',
    'landpads',
    'launches',
    'launchpads',
    'payloads',
    'roadster',
    'rockets',
    'ships',
    'starlink',
  ];

  final List<String> items = [
    "Name",
    "founder",
    "founded",
    "employees",
    "vehicles",
    "Launch Sites",
    "testSites",
    "ceo",
    "cto",
    "coo",
    "ctoPropulsion",
    "Valuation",
    "Summary",
    "ID"
  ];

  void categoriesNavigaton(BuildContext context, String categoryName) {
    switch (categoryName) {
      case 'cores':
        GoRouter.of(context).push(AppRouter.kCoreView);
        break;
      case 'dragons':
        GoRouter.of(context).push(AppRouter.kDragonView);
        break;
      case 'landpads':
        GoRouter.of(context).push(AppRouter.kLandPadsView);
        break;
      case 'launches':
        GoRouter.of(context).push(AppRouter.kLaubnchesView);
        break;
      case 'lanchpads':
        {}
        break;
      case 'payloads':
        {}
        break;
      case 'roadster':
        {}
        break;
      case 'rockets':
        {}
        break;
      case 'ships':
        {}
        break;
      case 'starlink':
        {}
        break;
    }
  }

  List<String> companyInfoMapToList(CompanyInfoSuccess state) {
    final companyInfo = state.companyInfo;
    return [
      companyInfo.name!,
      companyInfo.founder!,
      companyInfo.founded!.toString(),
      companyInfo.employees!.toString(),
      companyInfo.vehicles!.toString(),
      companyInfo.launchSites.toString(),
      companyInfo.testSites.toString(),
      companyInfo.ceo.toString(),
      companyInfo.cto.toString(),
      companyInfo.coo!,
      companyInfo.ctoPropulsion!,
      companyInfo.valuation.toString(),
      companyInfo.summary!,
      companyInfo.id!,
    ];
  }
}
