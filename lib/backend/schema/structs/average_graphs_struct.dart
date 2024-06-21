// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AverageGraphsStruct extends BaseStruct {
  AverageGraphsStruct({
    int? year,
    int? month,
    int? number,
  })  : _year = year,
        _month = month,
        _number = number;

  // "year" field.
  int? _year;
  int get year => _year ?? 0;
  set year(int? val) => _year = val;

  void incrementYear(int amount) => year = year + amount;

  bool hasYear() => _year != null;

  // "month" field.
  int? _month;
  int get month => _month ?? 0;
  set month(int? val) => _month = val;

  void incrementMonth(int amount) => month = month + amount;

  bool hasMonth() => _month != null;

  // "number" field.
  int? _number;
  int get number => _number ?? 0;
  set number(int? val) => _number = val;

  void incrementNumber(int amount) => number = number + amount;

  bool hasNumber() => _number != null;

  static AverageGraphsStruct fromMap(Map<String, dynamic> data) =>
      AverageGraphsStruct(
        year: castToType<int>(data['year']),
        month: castToType<int>(data['month']),
        number: castToType<int>(data['number']),
      );

  static AverageGraphsStruct? maybeFromMap(dynamic data) => data is Map
      ? AverageGraphsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'year': _year,
        'month': _month,
        'number': _number,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'year': serializeParam(
          _year,
          ParamType.int,
        ),
        'month': serializeParam(
          _month,
          ParamType.int,
        ),
        'number': serializeParam(
          _number,
          ParamType.int,
        ),
      }.withoutNulls;

  static AverageGraphsStruct fromSerializableMap(Map<String, dynamic> data) =>
      AverageGraphsStruct(
        year: deserializeParam(
          data['year'],
          ParamType.int,
          false,
        ),
        month: deserializeParam(
          data['month'],
          ParamType.int,
          false,
        ),
        number: deserializeParam(
          data['number'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'AverageGraphsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AverageGraphsStruct &&
        year == other.year &&
        month == other.month &&
        number == other.number;
  }

  @override
  int get hashCode => const ListEquality().hash([year, month, number]);
}

AverageGraphsStruct createAverageGraphsStruct({
  int? year,
  int? month,
  int? number,
}) =>
    AverageGraphsStruct(
      year: year,
      month: month,
      number: number,
    );
