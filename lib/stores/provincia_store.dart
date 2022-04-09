import 'package:mobx/mobx.dart';
import 'package:mzd/models/provincia.dart';
import 'package:mzd/repositories/provincia_repository.dart';
part 'provincia_store.g.dart';

class ProvinciaStore = _ProvinciaStore with _$ProvinciaStore;

abstract class _ProvinciaStore with Store {
  _ProvinciaStore() {
    _loadProvincias();
  }

  ObservableList<Provincia> provinciaList = ObservableList<Provincia>();

  @computed
  List<Provincia> get allProvinciaList => List.from(provinciaList)
    ..insert(0, Provincia(id: '*', description: 'Todas'));

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
