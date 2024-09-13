// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    String? name,
    String? avatar,
    List<ProductStruct>? cart,
  })  : _name = name,
        _avatar = avatar,
        _cart = cart;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "avatar" field.
  String? _avatar;
  String get avatar => _avatar ?? '';
  set avatar(String? val) => _avatar = val;

  bool hasAvatar() => _avatar != null;

  // "cart" field.
  List<ProductStruct>? _cart;
  List<ProductStruct> get cart => _cart ?? const [];
  set cart(List<ProductStruct>? val) => _cart = val;

  void updateCart(Function(List<ProductStruct>) updateFn) {
    updateFn(_cart ??= []);
  }

  bool hasCart() => _cart != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        name: data['name'] as String?,
        avatar: data['avatar'] as String?,
        cart: getStructList(
          data['cart'],
          ProductStruct.fromMap,
        ),
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'avatar': _avatar,
        'cart': _cart?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'avatar': serializeParam(
          _avatar,
          ParamType.String,
        ),
        'cart': serializeParam(
          _cart,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        avatar: deserializeParam(
          data['avatar'],
          ParamType.String,
          false,
        ),
        cart: deserializeStructParam<ProductStruct>(
          data['cart'],
          ParamType.DataStruct,
          true,
          structBuilder: ProductStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is UserStruct &&
        name == other.name &&
        avatar == other.avatar &&
        listEquality.equals(cart, other.cart);
  }

  @override
  int get hashCode => const ListEquality().hash([name, avatar, cart]);
}

UserStruct createUserStruct({
  String? name,
  String? avatar,
}) =>
    UserStruct(
      name: name,
      avatar: avatar,
    );
