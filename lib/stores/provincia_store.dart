import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:mzd/models/provincia.dart';
import 'package:mzd/repositories/provincia_repository.dart';

import 'connectivity_store.dart';

part 'provincia_store.g.dart';

class ProvinciaStore = _ProvinciaStore with _$ProvinciaStore;

abstract class _ProvinciaStore with Store {
  final ConnectivityStore connectivityStore = GetIt.I<ConnectivityStore>();

  _ProvinciaStore() {
    autorun((_) {
      if (connectivityStore.connected && provinciaList.isEmpty)
        _loadProvincias();
    });
  }

  ObservableList<Provincia> provinciaList = ObservableList<Provincia>();

  @computed
  List<Provincia> get allProvinciaList => List.from(provinciaList)
    ..insert(
        0,
        Provincia(
          id: '*',
          description: 'Todas províncias',
        ));

  @action
  void setProvincias(List<Provincia> provincias) {
    provinciaList.clear();
    provinciaList.addAll(provincias);
  }

  @observable
  String error;

  @action
  void setError(String value) => error = value;

  Future<void> _loadProvincias() async {
    try {
      final provincias = await ProvinciaRepository().getList();
      setProvincias(provincias);
    } catch (e) {
      setError(e);
    }
  }
}
