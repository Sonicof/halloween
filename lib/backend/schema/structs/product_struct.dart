// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductStruct extends BaseStruct {
  ProductStruct({
    String? title,
    String? desc,
    List<String>? options,
    String? image,
  })  : _title = title,
        _desc = desc,
        _options = options,
        _image = image;

  // "title" field.
  String? _title;
  String get title => _title ?? 'Sandwich';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? 'Rs. 129/-';
  set desc(String? val) => _desc = val;

  bool hasDesc() => _desc != null;

  // "options" field.
  List<String>? _options;
  List<String> get options => _options ?? const [];
  set options(List<String>? val) => _options = val;

  void updateOptions(Function(List<String>) updateFn) {
    updateFn(_options ??= []);
  }

  bool hasOptions() => _options != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  static ProductStruct fromMap(Map<String, dynamic> data) => ProductStruct(
        title: data['title'] as String?,
        desc: data['desc'] as String?,
        options: getDataList(data['options']),
        image: data['image'] as String?,
      );

  static ProductStruct? maybeFromMap(dynamic data) =>
      data is Map ? ProductStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'desc': _desc,
        'options': _options,
        'image': _image,
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
        'options': serializeParam(
          _options,
          ParamType.String,
          isList: true,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
      }.withoutNulls;

  static ProductStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductStruct(
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
        options: deserializeParam<String>(
          data['options'],
          ParamType.String,
          true,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ProductStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ProductStruct &&
        title == other.title &&
        desc == other.desc &&
        listEquality.equals(options, other.options) &&
        image == other.image;
  }

  @override
  int get hashCode => const ListEquality().hash([title, desc, options, image]);
}

ProductStruct createProductStruct({
  String? title,
  String? desc,
  String? image,
}) =>
    ProductStruct(
      title: title,
      desc: desc,
      image: image,
    );
