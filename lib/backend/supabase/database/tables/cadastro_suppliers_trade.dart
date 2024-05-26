import '../database.dart';

class CadastroSuppliersTradeTable
    extends SupabaseTable<CadastroSuppliersTradeRow> {
  @override
  String get tableName => 'cadastro_suppliers_trade';

  @override
  CadastroSuppliersTradeRow createRow(Map<String, dynamic> data) =>
      CadastroSuppliersTradeRow(data);
}

class CadastroSuppliersTradeRow extends SupabaseDataRow {
  CadastroSuppliersTradeRow(super.data);

  @override
  SupabaseTable get table => CadastroSuppliersTradeTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get nome => getField<String>('nome')!;
  set nome(String value) => setField<String>('nome', value);

  String? get categoria => getField<String>('categoria');
  set categoria(String? value) => setField<String>('categoria', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  String? get foto1Supplier => getField<String>('foto1_supplier');
  set foto1Supplier(String? value) => setField<String>('foto1_supplier', value);

  String? get foto2Supplier => getField<String>('foto2_supplier');
  set foto2Supplier(String? value) => setField<String>('foto2_supplier', value);

  String? get uidsupplier => getField<String>('uidsupplier');
  set uidsupplier(String? value) => setField<String>('uidsupplier', value);
}
