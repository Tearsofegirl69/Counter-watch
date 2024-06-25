import '../counter/counter_page.dart';
import 'package:flutter/material.dart';
import 'package:wear/wear.dart';

// Navigator key
GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AmbientMode(
        child: const CounterPage(),
        builder: (context, mode, child) {
          return MaterialApp(
            title: 'Counter wear',
            theme: ThemeData(
                visualDensity: VisualDensity.compact,
                colorScheme: mode == WearMode.active
                    ? const ColorScheme.dark(
                        primary: Color.fromARGB(255, 173, 0, 159),
                      )
                    : const ColorScheme.dark(
                        primary: Colors.white24,
                        onBackground: Color.fromARGB(255, 69, 3, 131),
                        onSurface: Colors.white10,
                      )),
            home: child,
            navigatorKey: navigatorKey,
          );
        });
  }
}
