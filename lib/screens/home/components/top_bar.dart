import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:mzd/screens/category/category_screen.dart';
import 'package:mzd/screens/endereco/provincia_screen.dart';
import 'package:mzd/stores/home_store.dart';

import 'bar_button.dart';

class TopBar extends StatelessWidget {
  final HomeStore homeStore = GetIt.I<HomeStore>();

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Observer(builder: (_) {
        return BarButton(
          label: homeStore.category?.description ?? 'Categorias',
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: Colors.grey[400]),
              //left: BorderSide(color: Colors.grey[400]),
              //right: BorderSide(color: Colors.grey[400]),
            ),
          ),
          onTap: () async {
            final category = await Navigator.of(context).push(MaterialPageRoute(
              builder: (_) => CategoryScreen(
                showAll: true,
                selected: homeStore.category,
              ),
            ));

            if (category != null) homeStore.setCategory(category);
          },
        );
      }),
      Container(
        width: 10,
        height: 40,
        decoration: BoxDecoration(
          border: Border(
            left: BorderSide(color: Colors.grey[400]),
            right: BorderSide(color: Colors.grey[400]),
            //top: BorderSide(color: Colors.grey[400]),
            //bottom: BorderSide(color: Colors.grey[400]),
          ),
        ),
      ),
      Observer(
        builder: (_) {
          return BarButton(
            label: homeStore.provincia?.description ?? 'Provincias',
            decoration: BoxDecoration(
              border: Border(
                //left: BorderSide(color: Colors.grey[400]),
                //right: BorderSide(color: Colors.grey[400]),
                top: BorderSide(color: Colors.grey[400]),
                // bottom: BorderSide(color: Colors.grey[400]),
              ),
            ),
            onTap: () async {
              final provincia =
                  await Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => ProvinciaScreen(
                  showAll: true,
                  selected: homeStore.provincia,
                ),
              ));

              if (provincia != null) homeStore.setProvincia(provincia);
            },
          );
        },
      )
    ]);
  }
}
