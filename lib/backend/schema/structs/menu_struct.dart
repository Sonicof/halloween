// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MenuStruct extends BaseStruct {
  MenuStruct({
    String? title,
    String? desc,
  })  : _title = title,
        _desc = desc;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  set desc(String? val) => _desc = val;

  bool hasDesc() => _desc != null;

  static MenuStruct fromMap(Map<String, dynamic> data) => MenuStruct(
        title: data['title'] as String?,
        desc: data['desc'] as String?,
      );

  static MenuStruct? maybeFromMap(dynamic data) =>
      data is Map ? MenuStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'desc': _desc,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'desc': serializeParam(
          _desc,
          ParamType.String,
        ),
      }.withoutNulls;

  static MenuStruct fromSerializableMap(Map<String, dynamic> data) =>
      MenuStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        desc: deserializeParam(
          data['desc'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MenuStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MenuStruct && title == other.title && desc == other.desc;
  }

  @override
  int get hashCode => const ListEquality().hash([title, desc]);
}

MenuStruct createMenuStruct({
  String? title,
  String? desc,
}) =>
    MenuStruct(
      title: title,
      desc: desc,
    );
