import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
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
    ],
  );
}
