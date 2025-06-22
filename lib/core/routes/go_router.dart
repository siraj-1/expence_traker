import 'package:expence_traker/screens/home/views/home_view.dart';
import 'package:expence_traker/screens/home/widgets/custom_home_nav_bar.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => CustomHomeNavBar(),
  ),
  GoRoute(
    path: "/homeView",
    builder: (context, state) => const HomeView(),
  ),
  GoRoute(
    path: "/CustomNavBar",
    builder: (context, state) => CustomHomeNavBar(),
  )
]);
