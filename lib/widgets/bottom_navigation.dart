import 'package:additive_industries/pages/tab_item.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  final ValueChanged<TabItem> onSelectTab;

  BottomNavigation({
    @required this.onSelectTab,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        _buildItem(TabItem.home),
        _buildItem(TabItem.planning),
        _buildItem(TabItem.history),
        _buildItem(TabItem.settings),
      ],
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Theme.of(context).accentColor,
      onTap: (index) => onSelectTab(
        TabItem.values[index],
      ),
    );
  }

  BottomNavigationBarItem _buildItem(TabItem tabItem) {
    return BottomNavigationBarItem(
      icon: Icon(tabIcon[tabItem]),
      label: tabName[tabItem],
    );
  }
}
