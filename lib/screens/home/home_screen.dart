import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:mzd/components/custom_drawer/custom_drawer.dart';
import 'package:mzd/components/empty_card.dart';
import 'package:mzd/screens/filter/filter_screen.dart';
import 'package:mzd/screens/home/components/ad_tile.dart';
import 'package:mzd/screens/home/components/create_ad_button.dart';
import 'package:mzd/screens/home/components/search_dialog.dart';
import 'package:mzd/screens/home/components/top_bar.dart';
import 'package:mzd/stores/home_store.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeStore homeStore = GetIt.I<HomeStore>();
  final ScrollController scrollController = ScrollController();

  openSearch(BuildContext context) async {
    final search = await showDialog(
      context: context,
      builder: (_) => SearchDialog(
        currentSearch: homeStore.search,
      ),
    );
    if (search != null) homeStore.setSearch(search);
    print(search);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: CustomDrawer(),
        appBar: AppBar(
          centerTitle: true,
          title: Observer(builder: (_) {
            if (homeStore.search.isEmpty) return Container();
            return GestureDetector(
              onTap: () => openSearch(context),
              child: LayoutBuilder(
                builder: (_, constraints) {
                  return Container(
                    width: constraints.biggest.width,
                    child: Observer(builder: (_) {
                      return Center(
                        child: Text(
                          homeStore.search,
                        ),
                      );
                    }),
                  );
                },
              ),
            );
          }),
          actions: [
            Observer(builder: (_) {
              if (homeStore.search.isEmpty)
                return IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    openSearch(context);
                  },
                );
              return IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  homeStore.setSearch('');
                },
              );
            }),
            IconButton(
                icon: Icon(Icons.filter_list_rounded),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => FilterScreen()));
                }),
          ],
        ),
        body: Column(
          children: [
            TopBar(),
            Expanded(
              child: Stack(
                children: [
                  Observer(builder: (_) {
                    if (homeStore.error != null)
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.error,
                              color: Colors.white,
                              size: 100,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Ocorreu um erro!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      );
                    if (homeStore.showProgress)
                      return Center(
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation(Colors.white),
                        ),
                      );
                    if (homeStore.adList.isEmpty)
                      return EmptyCard(
                          'Nenhum anúncio encontrado, tente outra busca ou outro filtro.');
                    return ListView.builder(
                      controller: scrollController,
                      itemCount: homeStore.itemCount,
                      itemBuilder: (_, index) {
                        if (index < homeStore.adList.length)
                          return AdTile(homeStore.adList[index]);

                        homeStore.loadNextPage();
                        return Container(
                          height: 10,
                          child: LinearProgressIndicator(
                            valueColor: AlwaysStoppedAnimation(Colors.purple),
                          ),
                        );
                      },
                    );
                  }),
                  Positioned(
                    bottom: -50,
                    left: 0,
                    right: 0,
                    child: CreateAdButton(scrollController),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}