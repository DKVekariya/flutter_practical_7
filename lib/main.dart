import 'package:flutter/material.dart';
import 'UI/Router/AppRoute.dart';

void main() {
  runApp(const MyApp());
}

/// The main app.
class MyApp extends StatelessWidget {
  /// Constructs a [MyApp]
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}

@override
Widget build(BuildContext context) {
  return MaterialApp.router(
    routerConfig: router,
    title: 'Chat App',
    theme: ThemeData(
      primarySwatch: Colors.indigo,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
  );
}