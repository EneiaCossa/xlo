import 'package:dio/dio.dart';
import 'package:mzd/models/provincia.dart';
import 'package:mzd/repositories/parse_errors.dart';
import 'package:mzd/repositories/table_keys.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class ProvinciaRepository {
  Future<List<Provincia>> getList() async {
    final queryBuilder = QueryBuilder(ParseObject(keyProvinciaTable))
      ..orderByAscending(keyProvinciaDescription);

    final response = await queryBuilder.query();

    if (response.success) {
      return response.results.map((p) => Provincia.fromParse(p)).toList();
    } else {
      throw ParseErrors.getDescription(response.error.code);
    }
  }
}
