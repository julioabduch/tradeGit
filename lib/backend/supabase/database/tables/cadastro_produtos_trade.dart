import '../database.dart';

class CadastroProdutosTradeTable
    extends SupabaseTable<CadastroProdutosTradeRow> {
  @override
  String get tableName => 'cadastro_produtos_trade';

  @override
  CadastroProdutosTradeRow createRow(Map<String, dynamic> data) =>
      CadastroProdutosTradeRow(data);
}

class CadastroProdutosTradeRow extends SupabaseDataRow {
  CadastroProdutosTradeRow(super.data);

  @override
  SupabaseTable get table => CadastroProdutosTradeTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  double? get precoRMB => getField<double>('preco_RMB');
  set precoRMB(double? value) => setField<double>('preco_RMB', value);

  double? get precoDollar => getField<double>('preco_Dollar');
  set precoDollar(double? value) => setField<double>('preco_Dollar', value);

  int? get unitsCarton => getField<int>('units_carton');
  set unitsCarton(int? value) => setField<int>('units_carton', value);

  int? get mOQCartons => getField<int>('MOQ_cartons');
  set mOQCartons(int? value) => setField<int>('MOQ_cartons', value);

  int? get mOQUnits => getField<int>('MOQ_units');
  set mOQUnits(int? value) => setField<int>('MOQ_units', value);

  int? get cartonCBM => getField<int>('carton_CBM');
  set cartonCBM(int? value) => setField<int>('carton_CBM', value);

  int? get leadDays => getField<int>('lead_days');
  set leadDays(int? value) => setField<int>('lead_days', value);

  int? get orderCartons => getField<int>('order_cartons');
  set orderCartons(int? value) => setField<int>('order_cartons', value);

  int? get orderUnits => getField<int>('order_units');
  set orderUnits(int? value) => setField<int>('order_units', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get photoprod1 => getField<String>('photoprod1');
  set photoprod1(String? value) => setField<String>('photoprod1', value);

  String? get photoprod2 => getField<String>('photoprod2');
  set photoprod2(String? value) => setField<String>('photoprod2', value);

  int? get supplier => getField<int>('supplier');
  set supplier(int? value) => setField<int>('supplier', value);

  String? get uidproduto => getField<String>('uidproduto');
  set uidproduto(String? value) => setField<String>('uidproduto', value);
}
