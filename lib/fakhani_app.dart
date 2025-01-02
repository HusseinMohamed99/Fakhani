import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FakhaniApp extends StatelessWidget {
  const FakhaniApp({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaler: const TextScaler.linear(1.0),
          ),
          child: MaterialApp(
            // Using "navigatorKey.currentState?.pushNamed(route, arguments: arguments);"
            navigatorKey: navigatorKey,
            title: 'Fakhani App',
            home: Text('Hello World'),
          ),
        );
      },
    );
  }
}
