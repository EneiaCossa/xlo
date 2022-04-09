// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provincia_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProvinciaStore on _ProvinciaStore, Store {
  Computed<List<Provincia>> _$allProvinciaListComputed;

  @override
  List<Provincia> get allProvinciaList => (_$allProvinciaListComputed ??=
          Computed<List<Provincia>>(() => super.allProvinciaList,
              name: '_ProvinciaStore.allProvinciaList'))
      .value;

  final _$errorAtom = Atom(name: '_ProvinciaStore.error');

  @override
  String get error {
    _$errorAtom.reportRead();
    return super.error;
  }

  @override
  set error(String value) {
    _$errorAtom.reportWrite(value, super.error, () {
      super.error = value;
    });
  }

  final _$_ProvinciaStoreActionController =
      ActionController(name: '_ProvinciaStore');

  @override
  void setProvincias(List<Provincia> provincias) {
    final _$actionInfo = _$_ProvinciaStoreActionController.startAction(
        name: '_ProvinciaStore.setProvincias');
    try {
      return super.setProvincias(provincias);
    } finally {
      _$_ProvinciaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setError(String value) {
    final _$actionInfo = _$_ProvinciaStoreActionController.startAction(
        name: '_ProvinciaStore.setError');
    try {
      return super.setError(value);
    } finally {
      _$_ProvinciaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
error: ${error},
allProvinciaList: ${allProvinciaList}
    ''';
  }
}
