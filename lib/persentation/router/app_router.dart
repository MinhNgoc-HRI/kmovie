import 'package:auto_route/auto_route.dart';
import 'package:kmovie/persentation/pages/home_page/home_screen.dart';
import 'package:kmovie/persentation/pages/login_page/login_page.dart';
import 'package:kmovie/persentation/pages/onbroad_page/onbroad_screen.dart';
part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: OnbroadRoute.page, path: '/'),
        AutoRoute(page: LoginRoute.page, path: '/login'),
        AutoRoute(page: HomeRoute.page, path: '/home'),
      ];
}
