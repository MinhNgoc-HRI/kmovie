import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kmovie/persentation/router/app_router.dart';

void main() async {
  //  flutter run --dart-define FLAVOR="dev"  | "prod" | "stag"
  // const flavor = String.fromEnvironment('FLAVOR', defaultValue: 'dev');
  await dotenv.load(fileName: '.env');
  // await DioBuilder.getInstance().get('/posts');

  runApp(ProviderScope(
    child: App(),
  ));
}

class App extends StatelessWidget {
  final AppRouter appRouter;
  App({super.key}) : appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
            theme: ThemeData(
                // useMaterial3: true,
                primaryColor: const Color(0xFFD21F3C),
                textTheme: Theme.of(context).textTheme.apply(
                    displayColor: Colors.white, bodyColor: Colors.white)),
            routerConfig: appRouter.config(),
            color: Colors.black);
      },
    );
  }
}
