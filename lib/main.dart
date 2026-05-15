import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pastport/core/network/local/shared_preferences.dart';
import 'package:pastport/core/network/remote/dio_helper.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_router.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  await LocalStorage.init();
  runApp(
      ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return const MyApp();
          },
      ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.whiteColor,
      ),
      debugShowCheckedModeBanner: false,
      title: 'PastPort',
      routerConfig: AppRouter.router,
    );
  }
}
