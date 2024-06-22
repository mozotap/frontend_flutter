import 'package:flutter/material.dart';
import 'package:mozotap/core/router/routers.dart';
import 'package:mozotap/presentation/utils/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      title: 'Mozotap',
      theme: ThemeData(
        colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: AppColors.primary,
          onPrimary: AppColors.white,
          secondary: AppColors.secondary,
          onSecondary: AppColors.textOnSecondary,
          error: Colors.red,
          onError: Colors.white,
          background: Colors.white,
          onBackground: AppColors.textColor,
          surface: Colors.grey[200]!,
          onSurface: AppColors.textColor,
        ),
        useMaterial3: true,
      ),
      initialRoute: AppRoutes.signIn,
      routes: AppRoutes.routes,
    );
  }
}
