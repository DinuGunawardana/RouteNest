import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';
import 'presentation/navigation/app_shell.dart';

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,

      title: "RouteNest",

      theme: AppTheme.lightTheme(),

      home: const AppShell(),
    );
  }
}