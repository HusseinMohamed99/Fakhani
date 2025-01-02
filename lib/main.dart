import 'package:bloc/bloc.dart';
import 'package:fakhani/bloc_observer.dart';
import 'package:fakhani/core/di/dependency_injection.dart';
import 'package:fakhani/fakhani_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  initServices();

  runApp(
    const FakhaniApp(),
  );
}

Future<void> initServices() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  await ScreenUtil.ensureScreenSize();
  Bloc.observer = MyBlocObserver();
}
