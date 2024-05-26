// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ImageSupplierStruct extends BaseStruct {
  ImageSupplierStruct({
    String? foto1,
    String? foto2,
  })  : _foto1 = foto1,
        _foto2 = foto2;

  // "foto1" field.
  String? _foto1;
  String get foto1 => _foto1 ?? '';
  set foto1(String? val) => _foto1 = val;
  bool hasFoto1() => _foto1 != null;

  // "foto2" field.
  String? _foto2;
  String get foto2 => _foto2 ?? '';
  set foto2(String? val) => _foto2 = val;
  bool hasFoto2() => _foto2 != null;

  static ImageSupplierStruct fromMap(Map<String, dynamic> data) =>
      ImageSupplierStruct(
        foto1: data['foto1'] as String?,
        foto2: data['foto2'] as String?,
      );

  static ImageSupplierStruct? maybeFromMap(dynamic data) => data is Map
      ? ImageSupplierStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'foto1': _foto1,
        'foto2': _foto2,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'foto1': serializeParam(
          _foto1,
          ParamType.String,
        ),
        'foto2': serializeParam(
          _foto2,
          ParamType.String,
        ),
      }.withoutNulls;

  static ImageSupplierStruct fromSerializableMap(Map<String, dynamic> data) =>
      ImageSupplierStruct(
        foto1: deserializeParam(
          data['foto1'],
          ParamType.String,
          false,
        ),
        foto2: deserializeParam(
          data['foto2'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ImageSupplierStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ImageSupplierStruct &&
        foto1 == other.foto1 &&
        foto2 == other.foto2;
  }

  @override
  int get hashCode => const ListEquality().hash([foto1, foto2]);
}

ImageSupplierStruct createImageSupplierStruct({
  String? foto1,
  String? foto2,
}) =>
    ImageSupplierStruct(
      foto1: foto1,
      foto2: foto2,
    );
