import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_components/routes/app_routes.dart';
import 'package:flutter_application_components/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(
    //     const SystemUiOverlayStyle(statusBarColor: Colors.indigo));

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        // home: const HomeListScreen(),
        initialRoute: AppRoutes.initialRoute,
        routes: AppRoutes.getRouteApp(),
        onGenerateRoute: AppRoutes.onGenerateRoute);
  }
}
