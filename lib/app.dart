import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:story_app_flutter/routes/routes_delegate.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  RoutesDelegate routesDelegate = RoutesDelegate();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark, //Android
        statusBarBrightness: Brightness.light //iOS
        ));
    return MaterialApp(
      title: 'Story App',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: true),
      home: Router(
        routerDelegate: routesDelegate,
        backButtonDispatcher: RootBackButtonDispatcher(),
      ),
    );
  }
}
