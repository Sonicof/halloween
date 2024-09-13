import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      if (prefs.containsKey('ff_users')) {
        try {
          final serializedData = prefs.getString('ff_users') ?? '{}';
          _users = UserStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<ProductStruct> _products = [
    ProductStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Sandwich\",\"desc\":\"Rs. 129/-\",\"options\":\"[\\\"1 Person\\\",\\\"2 Person\\\",\\\"3 Person\\\"]\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/landing-page-fswu4g/assets/5tymf4mmuwu8/Untitled_design(16).png\"}')),
    ProductStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Pizza\",\"desc\":\"Rs. 141/-\",\"options\":\"[\\\"1 Person\\\",\\\"2 Person\\\",\\\"3 Person\\\"]\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/landing-page-fswu4g/assets/c05itu78occ4/Untitled_design(4).png\"}')),
    ProductStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Biryani\",\"desc\":\"\",\"options\":\"[\\\"1 Person\\\"]\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/landing-page-fswu4g/assets/nqha850upe2f/Untitled_design(3).png\"}')),
    ProductStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Burger\",\"desc\":\"\",\"options\":\"[\\\"1 Person\\\",\\\"2 Person\\\"]\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/landing-page-fswu4g/assets/qst8u3fdk2wp/Untitled_design(7).png\"}'))
  ];
  List<ProductStruct> get products => _products;
  set products(List<ProductStruct> value) {
    _products = value;
  }

  void addToProducts(ProductStruct value) {
    products.add(value);
  }

  void removeFromProducts(ProductStruct value) {
    products.remove(value);
  }

  void removeAtIndexFromProducts(int index) {
    products.removeAt(index);
  }

  void updateProductsAtIndex(
    int index,
    ProductStruct Function(ProductStruct) updateFn,
  ) {
    products[index] = updateFn(_products[index]);
  }

  void insertAtIndexInProducts(int index, ProductStruct value) {
    products.insert(index, value);
  }

  List<MenuStruct> _menus = [
    MenuStruct.fromSerializableMap(
        jsonDecode('{\"title\":\"Burger\",\"desc\":\"Describe Burger Menu\"}')),
    MenuStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Biryani\",\"desc\":\"Describe Biryani Menu\"}')),
    MenuStruct.fromSerializableMap(
        jsonDecode('{\"title\":\"Pizza\",\"desc\":\"Describe Pizza Menu\"}')),
    MenuStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Sandwich\",\"desc\":\"Describe Sandwich Menu\"}'))
  ];
  List<MenuStruct> get menus => _menus;
  set menus(List<MenuStruct> value) {
    _menus = value;
  }

  void addToMenus(MenuStruct value) {
    menus.add(value);
  }

  void removeFromMenus(MenuStruct value) {
    menus.remove(value);
  }

  void removeAtIndexFromMenus(int index) {
    menus.removeAt(index);
  }

  void updateMenusAtIndex(
    int index,
    MenuStruct Function(MenuStruct) updateFn,
  ) {
    menus[index] = updateFn(_menus[index]);
  }

  void insertAtIndexInMenus(int index, MenuStruct value) {
    menus.insert(index, value);
  }

  UserStruct _users = UserStruct.fromSerializableMap(jsonDecode(
      '{\"name\":\"Ahmed\",\"avatar\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/landing-page-fswu4g/assets/ikkhjvfbats7/LogoD.png\",\"cart\":\"[\\\"{\\\\\\\"title\\\\\\\":\\\\\\\"Burger\\\\\\\",\\\\\\\"desc\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"options\\\\\\\":\\\\\\\"[\\\\\\\\\\\\\\\"Hello World\\\\\\\\\\\\\\\"]\\\\\\\",\\\\\\\"image\\\\\\\":\\\\\\\"hhttps://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/landing-page-fswu4g/assets/qst8u3fdk2wp/Untitled_design(7).png\\\\\\\"}\\\",\\\"{\\\\\\\"title\\\\\\\":\\\\\\\"Biryani\\\\\\\",\\\\\\\"desc\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"options\\\\\\\":\\\\\\\"[\\\\\\\\\\\\\\\"Hello World\\\\\\\\\\\\\\\"]\\\\\\\",\\\\\\\"image\\\\\\\":\\\\\\\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/landing-page-fswu4g/assets/nqha850upe2f/Untitled_design(3).png\\\\\\\"}\\\"]\"}'));
  UserStruct get users => _users;
  set users(UserStruct value) {
    _users = value;
    prefs.setString('ff_users', value.serialize());
  }

  void updateUsersStruct(Function(UserStruct) updateFn) {
    updateFn(_users);
    prefs.setString('ff_users', _users.serialize());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
