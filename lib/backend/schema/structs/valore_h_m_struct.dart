// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ValoreHMStruct extends BaseStruct {
  ValoreHMStruct({
    String? categoria,
    List<int>? valori,
    List<String>? mesi,
  })  : _categoria = categoria,
        _valori = valori,
        _mesi = mesi;

  // "categoria" field.
  String? _categoria;
  String get categoria => _categoria ?? '';
  set categoria(String? val) => _categoria = val;

  bool hasCategoria() => _categoria != null;

  // "valori" field.
  List<int>? _valori;
  List<int> get valori => _valori ?? const [];
  set valori(List<int>? val) => _valori = val;

  void updateValori(Function(List<int>) updateFn) {
    updateFn(valori ??= []);
  }

  bool hasValori() => _valori != null;

  // "mesi" field.
  List<String>? _mesi;
  List<String> get mesi => _mesi ?? const [];
  set mesi(List<String>? val) => _mesi = val;

  void updateMesi(Function(List<String>) updateFn) {
    updateFn(mesi ??= []);
  }

  bool hasMesi() => _mesi != null;

  static ValoreHMStruct fromMap(Map<String, dynamic> data) => ValoreHMStruct(
        categoria: data['categoria'] as String?,
        valori: getDataList(data['valori']),
        mesi: getDataList(data['mesi']),
      );

  static ValoreHMStruct? maybeFromMap(dynamic data) =>
      data is Map ? ValoreHMStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'categoria': _categoria,
        'valori': _valori,
        'mesi': _mesi,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'categoria': serializeParam(
          _categoria,
          ParamType.String,
        ),
        'valori': serializeParam(
          _valori,
          ParamType.int,
          isList: true,
        ),
        'mesi': serializeParam(
          _mesi,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static ValoreHMStruct fromSerializableMap(Map<String, dynamic> data) =>
      ValoreHMStruct(
        categoria: deserializeParam(
          data['categoria'],
          ParamType.String,
          false,
        ),
        valori: deserializeParam<int>(
          data['valori'],
          ParamType.int,
          true,
        ),
        mesi: deserializeParam<String>(
          data['mesi'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'ValoreHMStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ValoreHMStruct &&
        categoria == other.categoria &&
        listEquality.equals(valori, other.valori) &&
        listEquality.equals(mesi, other.mesi);
  }

  @override
  int get hashCode => const ListEquality().hash([categoria, valori, mesi]);
}

ValoreHMStruct createValoreHMStruct({
  String? categoria,
}) =>
    ValoreHMStruct(
      categoria: categoria,
    );
