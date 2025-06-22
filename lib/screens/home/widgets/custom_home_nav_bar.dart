import 'package:expence_traker/screens/home/views/home_view.dart';
import 'package:expence_traker/screens/profile/views/profile_view.dart';
import 'package:expence_traker/screens/transcation/views/trasnscation_view.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class CustomHomeNavBar extends StatelessWidget {
  const CustomHomeNavBar({super.key});

  List<PersistentTabConfig> _tabs() => [
        PersistentTabConfig(
          screen: const HomeView(),
          item: ItemConfig(
            icon: const Icon(Icons.home),
            activeForegroundColor: Colors.lightBlue,
            inactiveForegroundColor: Colors.grey,
          ),
        ),
        PersistentTabConfig(
          screen: const TrasnscationView(),
          item: ItemConfig(
              icon: Icon(
                Icons.add,
              ),
              activeForegroundColor: Colors.lightBlue,
              inactiveBackgroundColor: Colors.blue),
        ),
        PersistentTabConfig(
          screen: const ProfileView(),
          item: ItemConfig(
            icon: const Icon(Icons.settings),
            activeForegroundColor: Colors.lightBlue,
            inactiveForegroundColor: Colors.grey,
          ),
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      tabs: _tabs(),
      navBarBuilder: (navBarConfig) => Style12BottomNavBar(
        navBarConfig: navBarConfig,
        navBarDecoration: NavBarDecoration(
          color: Colors.grey.shade100,
        ),
      ),
    );
  }
}
