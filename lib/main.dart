import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/app/locator.dart';
import 'features/auth/splash_view.dart';

void main() async {
  setUpLocator();
  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428, 926),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, _) {
          // ScreenUtil.init(context);
          return MaterialApp(
            theme: ThemeData(
              primarySwatch: Colors.orange,
            ),
            debugShowCheckedModeBanner: false,
            home: SplashScreen(),
            // navigatorKey: NavigationService.navigatorKey,
            // onGenerateRoute: Routes.generateRoute,
            // initialRoute: Routes.initialRoute,
          );
        });
  }
}
