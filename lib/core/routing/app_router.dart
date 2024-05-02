import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:space_x/features/category/logic/cubits/core_cubit/core_cubit.dart';
import 'package:space_x/features/category/logic/cubits/dragon_cubit/dragon_cubit.dart';
import 'package:space_x/features/category/ui/views/core_view.dart';
import 'package:space_x/features/category/ui/views/dragon_view.dart';
import 'package:space_x/features/home/data/models/crew_info/crew_info.dart';
import 'package:space_x/features/home/logic/cubits/cubit/crew_info_cubit.dart';
import 'package:space_x/features/home/ui/screens/details_view.dart';
import 'package:space_x/features/home/ui/screens/home_view.dart';
import 'package:space_x/features/overview/logic/campany_info/campany_info_cubit.dart';
import 'package:space_x/features/overview/ui/screens/info_view.dart';
import 'package:space_x/features/overview/ui/screens/links_view.dart';
import 'package:space_x/features/overview/ui/screens/overview.dart';
import 'package:space_x/features/splach/ui/screens/splach_view.dart';

abstract class AppRouter {
  static const String initialRoute = '/';
  static const String kOverView = '/overview';
  static const String kLinksView = '/linksview';
  static const String kInfoView = '/infoView';
  static const String kHomeView = '/homeview';
  static const String kDetailsView = '/detailsView';
  static const String kCoreView = '/coreview';
  static const String kDragonView = '/dragonView';

  static final GoRouter routers = GoRouter(
    routes: [
      GoRoute(
        path: initialRoute,
        builder: (context, state) => const SplachView(),
      ),
      GoRoute(
        path: kOverView,
        builder: (context, state) => BlocProvider(
          create: (context) => CompanyInfoCubit()..getCampanyInfo(),
          child: const OverView(),
        ),
      ),
      GoRoute(
        path: kLinksView,
        builder: (context, state) => BlocProvider(
          create: (context) => CompanyInfoCubit()..getCampanyInfo(),
          child: const LinksView(),
        ),
      ),
      GoRoute(
        path: kInfoView,
        builder: (context, state) => BlocProvider(
          create: (context) => CompanyInfoCubit()..getCampanyInfo(),
          child: const InfoView(),
        ),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => BlocProvider(
          create: (context) => CrewInfoCubit()..getCrewInfo(),
          child: const HomeView(),
        ),
      ),
      GoRoute(
        path: kDetailsView,
        builder: (context, state) => DetailsView(
          crewInfo: state.extra as CrewInfo,
        ),
      ),
      GoRoute(
        path: kCoreView,
        builder: (context, state) => BlocProvider(
          create: (context) => CoreCubit()..fetshAllCores(),
          child: const CoreView(),
        ),
      ),
      GoRoute(
        path: kDragonView,
        builder: (context, state) => BlocProvider(
          create: (context) => DragonCubit()..fetshAllDragons(),
          child: const DragonView(),
        ),
      ),
    ],
  );
}
