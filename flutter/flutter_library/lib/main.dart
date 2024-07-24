import 'package:flutter/material.dart';
import 'package:flutter_library/screen/home_page.dart';
import 'package:flutter_library/screen/mechanism/life_cycle.dart';
import 'package:flutter_library/screen/mechanism/mechanism_home.dart';
import 'package:go_router/go_router.dart'; // router import
import 'package:flutter_library/theme/custom_theme.dart'; // dark mode light mode를 위한 custom theme

void main() {
  runApp(const MyApp());
}

// -----------------------------
//            Router
// -----------------------------
final GoRouter _router = GoRouter(routes: <RouteBase>[
  GoRoute(
      name: 'home',
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      }),
  GoRoute(
      name: 'component',
      path: '/component',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      }),
  GoRoute(
      name: 'mechanism',
      path: '/mechanism',
      builder: (BuildContext context, GoRouterState state) {
        return const MechanismHome();
      },
      routes: <RouteBase>[
        GoRoute(
            path: 'lifecycle',
            builder: (BuildContext context, GoRouterState state) {
              return const LifeCycle();
            })
      ])
]);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.dark);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
        valueListenable: themeNotifier,
        builder: (_, ThemeMode currentMode, __) {
          return MaterialApp.router(
            routerConfig: _router,
            theme: CustomTheme.lightTheme,
            darkTheme: CustomTheme.darkTheme,
            themeMode: currentMode,
          );
        });

    // MaterialApp(
    //   title: 'Flutter Library',
    //   theme: ThemeData(
    //     // This is the theme of your application.
    //     //
    //     // TRY THIS: Try running your application with "flutter run". You'll see
    //     // the application has a purple toolbar. Then, without quitting the app,
    //     // try changing the seedColor in the colorScheme below to Colors.green
    //     // and then invoke "hot reload" (save your changes or press the "hot
    //     // reload" button in a Flutter-supported IDE, or press "r" if you used
    //     // the command line to start the app).
    //     //
    //     // Notice that the counter didn't reset back to zero; the application
    //     // state is not lost during the reload. To reset the state, use hot
    //     // restart instead.
    //     //
    //     // This works for code too, not just values: Most code changes can be
    //     // tested with just a hot reload.
    //     colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    //     useMaterial3: true,
    //   ),
    //   home: const MyHomePage(),
    // );
  }
}
