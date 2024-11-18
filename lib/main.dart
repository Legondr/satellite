import 'package:flutter/material.dart';
import 'package:satelite/router.dart';
import 'package:satelite/welcome_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Welcome',
      routerConfig: appRouter.config(),
    );
  }
}