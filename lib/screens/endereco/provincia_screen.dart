import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:mzd/components/error_box.dart';
import 'package:mzd/models/provincia.dart';
import 'package:mzd/stores/provincia_store.dart';

class ProvinciaScreen extends StatelessWidget {
  ProvinciaScreen({this.selected, this.showAll = true});
  final Provincia selected;
  final bool showAll;

  final ProvinciaStore provinciaStore = GetIt.I<ProvinciaStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provincias'),
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.fromLTRB(32, 12, 32, 32),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 8,
          child: Observer(builder: (_) {
            if (provinciaStore.error != null) {
              return ErrorBox(
                message: provinciaStore.error,
              );
            } else if (provinciaStore.provinciaList.isEmpty) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              final provincias = showAll
                  //provinciaStore.provinciaList
                  ? provinciaStore.allProvinciaList
                  : provinciaStore.provinciaList;

              return ListView.separated(
                itemCount: provincias.length,
                separatorBuilder: (_, __) {
                  return Divider(
                    height: 0.1,
                    color: Colors.grey,
                  );
                },
                itemBuilder: (_, index) {
                  final provincia = provincias[index];
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).pop(provincia);
                    },
                    child: Container(
                      height: 50,
                      color: provincia.id == selected?.id
                          ? Colors.purple.withAlpha(50)
                          : null,
                      alignment: Alignment.center,
                      child: Text(
                        provincia.description,
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontWeight: provincia.id == selected?.id
                                ? FontWeight.bold
                                : null),
                      ),
                    ),
                  );
                },
              );
            }
          }),
        ),
      ),
    );
  }
}
