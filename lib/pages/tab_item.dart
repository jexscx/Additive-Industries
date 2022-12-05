import 'package:flutter/material.dart';

enum TabItem { home, planning, history, settings }

const Map<TabItem, String> tabName = {
  TabItem.home: 'Home',
  TabItem.planning: 'Planning',
  TabItem.history: 'History',
  TabItem.settings: 'Settings',
};

const Map<TabItem, IconData> tabIcon = {
  TabItem.home: Icons.home,
  TabItem.planning: Icons.calendar_today_rounded,
  TabItem.history: Icons.list,
  TabItem.settings: Icons.settings_outlined,
};
