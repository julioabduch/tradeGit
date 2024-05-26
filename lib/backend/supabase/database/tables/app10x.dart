import '../database.dart';

class App10xTable extends SupabaseTable<App10xRow> {
  @override
  String get tableName => 'App10x';

  @override
  App10xRow createRow(Map<String, dynamic> data) => App10xRow(data);
}

class App10xRow extends SupabaseDataRow {
  App10xRow(super.data);

  @override
  SupabaseTable get table => App10xTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get titulo => getField<String>('titulo');
  set titulo(String? value) => setField<String>('titulo', value);

  DateTime? get dataField => getField<DateTime>('data');
  set dataField(DateTime? value) => setField<DateTime>('data', value);

  bool? get status => getField<bool>('status');
  set status(bool? value) => setField<bool>('status', value);
}
