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
      _appStatefotoSupplier = prefs
              .getStringList('ff_appStatefotoSupplier')
              ?.map((x) {
                try {
                  return ImageSupplierStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _appStatefotoSupplier;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<ImageSupplierStruct> _appStatefotoSupplier = [];
  List<ImageSupplierStruct> get appStatefotoSupplier => _appStatefotoSupplier;
  set appStatefotoSupplier(List<ImageSupplierStruct> value) {
    _appStatefotoSupplier = value;
    prefs.setStringList(
        'ff_appStatefotoSupplier', value.map((x) => x.serialize()).toList());
  }

  void addToAppStatefotoSupplier(ImageSupplierStruct value) {
    _appStatefotoSupplier.add(value);
    prefs.setStringList('ff_appStatefotoSupplier',
        _appStatefotoSupplier.map((x) => x.serialize()).toList());
  }

  void removeFromAppStatefotoSupplier(ImageSupplierStruct value) {
    _appStatefotoSupplier.remove(value);
    prefs.setStringList('ff_appStatefotoSupplier',
        _appStatefotoSupplier.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromAppStatefotoSupplier(int index) {
    _appStatefotoSupplier.removeAt(index);
    prefs.setStringList('ff_appStatefotoSupplier',
        _appStatefotoSupplier.map((x) => x.serialize()).toList());
  }

  void updateAppStatefotoSupplierAtIndex(
    int index,
    ImageSupplierStruct Function(ImageSupplierStruct) updateFn,
  ) {
    _appStatefotoSupplier[index] = updateFn(_appStatefotoSupplier[index]);
    prefs.setStringList('ff_appStatefotoSupplier',
        _appStatefotoSupplier.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInAppStatefotoSupplier(
      int index, ImageSupplierStruct value) {
    _appStatefotoSupplier.insert(index, value);
    prefs.setStringList('ff_appStatefotoSupplier',
        _appStatefotoSupplier.map((x) => x.serialize()).toList());
  }

  int _supplierID = 0;
  int get supplierID => _supplierID;
  set supplierID(int value) {
    _supplierID = value;
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
