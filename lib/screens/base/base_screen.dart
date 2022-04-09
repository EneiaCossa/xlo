import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:mzd/screens/account/account_screen.dart';
import 'package:mzd/screens/create/create_screen.dart';
import 'package:mzd/screens/favorites/favorites_screen.dart';
import 'package:mzd/screens/home/home_screen.dart';
import 'package:mzd/screens/offline/offline_screen.dart';
import 'package:mzd/stores/connectivity_store.dart';
import 'package:mzd/stores/page_store.dart';

class BaseScreen extends StatefulWidget {
  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  final PageController pageController = PageController();

  final PageStore pageStore = GetIt.I<PageStore>();
  final ConnectivityStore connectivityStore = GetIt.I<ConnectivityStore>();

  @override
  void initState() {
    super.initState();

    reaction((_) => pageStore.page, (page) => pageController.jumpToPage(page));

    autorun((_) {
      print(connectivityStore.connected);
      if (!connectivityStore.connected) {
        Future.delayed(Duration(milliseconds: 50)).then((value) {
          showDialog(context: context, builder: (_) => OfflineScreen());
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          HomeScreen(),
          CreateScreen(),
          Container(
            color: Colors.yellow,
          ),
          FavoritesScreen(),
          AccountScreen(),
        ],
      ),
    );
  }
}
