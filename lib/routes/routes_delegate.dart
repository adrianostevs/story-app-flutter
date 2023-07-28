import 'package:flutter/material.dart';
import 'package:story_app_flutter/ui/auth/login/login_screen.dart';

class RoutesDelegate extends RouterDelegate
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  final GlobalKey<NavigatorState> _navigatorKey;

  RoutesDelegate() : _navigatorKey = GlobalKey<NavigatorState>();

  List<Page> pageStack = [];

  @override
  Widget build(BuildContext context) {
    pageStack = _loginStack;
    return Navigator(
      key: _navigatorKey,
      pages: pageStack,
      onPopPage: (route, result) {
        final didPop = route.didPop(result);
        if (!didPop) {
          return false;
        }

        notifyListeners();

        return true;
      },
    );
  }

  @override
  GlobalKey<NavigatorState>? get navigatorKey => _navigatorKey;

  @override
  Future<void> setNewRoutePath(configuration) async {}

  List<Page> get _loginStack =>
      const [MaterialPage(child: LoginScreen(), key: ValueKey("LoginScreen"))];
}
