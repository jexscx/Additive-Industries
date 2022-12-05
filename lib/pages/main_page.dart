import 'package:additive_industries/pages/coredetail_page.dart';
import 'package:additive_industries/pages/tab_item.dart';
import 'package:additive_industries/theme/theme.dart';
import 'package:additive_industries/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'pages.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _MainPageState();
}

class _MainPageState extends State {
  TabItem _currentTab = TabItem.home;
  final navigatorKey = GlobalKey<NavigatorState>();

  void _selectTab(TabItem item) {
    setState(() => _currentTab = item);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => !await navigatorKey.currentState.maybePop(),
      child: Scaffold(
        body: Stack(
          children: [_buildHomeNavigator()],
        ),
        bottomNavigationBar: BottomNavigation(
          onSelectTab: _selectTab,
        ),
      ),
    );
  }

  Widget _buildHomeNavigator() {
    return Offstage(
      offstage: _currentTab != TabItem.home,
      child: Navigator(
        key: navigatorKey,
        initialRoute: '/',
        onGenerateRoute: (RouteSettings settings) {
          WidgetBuilder builder;
          switch (settings.name) {
            case '/':
              builder = (
                BuildContext _,
              ) =>
                  HomePage();
              break;
            case '/cores':
              builder = (BuildContext _) => CorePage();
              break;
            case '/coredetail':
              builder = (BuildContext _) => CoreDetailPage();
              break;
            default:
              throw Exception('Invalid route: ${settings.name}');
          }
          return CupertinoPageRoute(builder: builder, settings: settings);
        },
      ),
    );
  }
}
