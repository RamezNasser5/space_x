import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:space_x/features/category/data/models/dragons_model/dragons_model.dart';
import 'package:space_x/features/category/data/models/launch_pads/launch_pads_model.dart';
import 'package:space_x/features/category/logic/cubits/core_cubit/core_cubit.dart';
import 'package:space_x/features/category/logic/cubits/dragon_cubit/dragon_cubit.dart';
import 'package:space_x/features/category/logic/cubits/landpads_cubit/land_pads_cubit.dart';
import 'package:space_x/features/category/logic/cubits/launchPads_cubit/launch_pads_cubit.dart';
import 'package:space_x/features/category/ui/views/core_view.dart';
import 'package:space_x/features/category/ui/views/dragon_details_view.dart';
import 'package:space_x/features/category/ui/views/dragon_view.dart';
import 'package:space_x/features/category/ui/views/landpads_view.dart';
import 'package:space_x/features/category/ui/views/launches_view.dart';
import 'package:space_x/features/home/data/models/crew_info/crew_info.dart';
import 'package:space_x/features/home/logic/cubits/cubit/crew_info_cubit.dart';
import 'package:space_x/features/home/ui/screens/details_view.dart';
import 'package:space_x/features/home/ui/screens/home_view.dart';
import 'package:space_x/features/overview/logic/campany_info/campany_info_cubit.dart';
import 'package:space_x/features/overview/ui/screens/info_view.dart';
import 'package:space_x/features/overview/ui/screens/links_view.dart';
import 'package:space_x/features/overview/ui/screens/overview.dart';
import 'package:space_x/features/splach/ui/screens/splach_view.dart';

import '../../features/category/ui/views/launchpads_view.dart';

abstract class AppRouter {
  static const String initialRoute = '/';
  static const String kOverView = '/overview';
  static const String kLinksView = '/linksview';
  static const String kInfoView = '/infoView';
  static const String kHomeView = '/homeview';
  static const String kDetailsView = '/detailsView';
  static const String kCoreView = '/coreview';
  static const String kDragonView = '/dragonView';
  static const String kDragonDetailsView = '/dragonDetailsView';
  static const String kLandPadsView = '/landPadsView';
  static const String kLaubnchesView = '/launchesView';
  static const String kLaunchesPadsView = '/launchesPadsView';

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
      GoRoute(
        path: kDragonDetailsView,
        builder: (context, state) => DragonDetailsView(
          dragon: state.extra as DragonsModel,
        ),
      ),
      GoRoute(
        path: kLandPadsView,
        builder: (context, state) => BlocProvider(
          create: (context) => LandPadsCubit()..getAllLandPads(),
          child: const LandPadsView(),
        ),
      ),
      GoRoute(
        path: kLaubnchesView,
        builder: (context, state) => BlocProvider(
          create: (context) => LandPadsCubit()..getAllLandPads(),
          child: const LaunchesView(),
        ),
      ),
      GoRoute(
        path: kLaunchesPadsView,
        builder: (context, state) => BlocProvider(
          create: (context) => LaunchPadsCubit()..getLaunchesPads(),
          child:  LaunchPadView(),
        ),
      ),
    ],
  );
}
