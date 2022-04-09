import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mzd/screens/endereco/provincia_screen.dart';
import 'package:mzd/stores/create_store.dart';

class ProvinciaField extends StatelessWidget {
  ProvinciaField(this.createStore);
  final CreateStore createStore;

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Column(
        children: [
          ListTile(
            title: createStore.provincia == null
                ? Text(
                    'Provincia *',
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  )
                : Text(
                    'Provincia *',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
            subtitle: createStore.provincia == null
                ? null
                : Text(
                    '${createStore.provincia.description}',
                    style: TextStyle(color: Colors.black, fontSize: 17),
                  ),
            trailing: Icon(Icons.keyboard_arrow_down),
            onTap: () async {
              final provincia = await showDialog(
                context: context,
                builder: (_) => ProvinciaScreen(
                  showAll: false,
                  selected: createStore.provincia,
                ),
              );
              if (provincia != null) {
                createStore.setProvincia(provincia);
              }
            },
          ),
          if (createStore.provinciaError != null)
            Container(
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                border: Border(top: BorderSide(color: Colors.red)),
              ),
              padding: const EdgeInsets.fromLTRB(16, 8, 0, 0),
              child: Text(
                createStore.provinciaError,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 12,
                ),
              ),
            )
          else
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.grey[500]),
                ),
              ),
            )
        ],
      );
    });
  }
}
