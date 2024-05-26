import '../database.dart';

class CategoriaTradeTable extends SupabaseTable<CategoriaTradeRow> {
  @override
  String get tableName => 'categoria_trade';

  @override
  CategoriaTradeRow createRow(Map<String, dynamic> data) =>
      CategoriaTradeRow(data);
}

class CategoriaTradeRow extends SupabaseDataRow {
  CategoriaTradeRow(super.data);

  @override
  SupabaseTable get table => CategoriaTradeTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get categoria => getField<String>('categoria');
  set categoria(String? value) => setField<String>('categoria', value);

  String? get uidcategoria => getField<String>('uidcategoria');
  set uidcategoria(String? value) => setField<String>('uidcategoria', value);
}
