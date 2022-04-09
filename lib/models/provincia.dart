import 'package:mzd/repositories/table_keys.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class Provincia {
  Provincia({this.id, this.description});

  Provincia.fromParse(ParseObject parseObject)
      : id = parseObject.objectId,
        description = parseObject.get(keyProvinciaDescription);

  final String id;
  final String description;

  @override
  String toString() {
    return 'Provincia{id: $id, description: $description}';
  }
}
