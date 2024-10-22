import 'package:flutter/material.dart';
import 'package:streamplay/src/core/routers.dart';
import 'package:streamplay/src/ui/widgets/primary_field.dart';

void main() {
  const String initialRoute = AppRoutes.signIn;
  runApp(
    const MyApp(
      initialRoute: initialRoute,
    ),
  );
}

class MyApp extends StatelessWidget {
  final String initialRoute;
  const MyApp({super.key, required this.initialRoute});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream Play',
      theme: appTheme,
      routes: AppRoutes.routes,
      initialRoute: initialRoute,
    );
  }
}

ThemeData appTheme = ThemeData(
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: AppColors.primary,
    onPrimary: AppColors.white,
    secondary: AppColors.secondary,
    onSecondary: AppColors.textOnSecondary,
    error: Colors.red,
    onError: AppColors.white,
    surface: AppColors.white,
    onSurface: AppColors.textColor,
  ),
  useMaterial3: true,
  inputDecorationTheme: const InputDecorationTheme(
    border: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.border),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.primary),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.border),
    ),
  ),
);
