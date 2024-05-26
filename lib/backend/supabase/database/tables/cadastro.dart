import '../database.dart';

class CadastroTable extends SupabaseTable<CadastroRow> {
  @override
  String get tableName => 'cadastro';

  @override
  CadastroRow createRow(Map<String, dynamic> data) => CadastroRow(data);
}

class CadastroRow extends SupabaseDataRow {
  CadastroRow(super.data);

  @override
  SupabaseTable get table => CadastroTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get cpf => getField<String>('cpf');
  set cpf(String? value) => setField<String>('cpf', value);

  String? get rg => getField<String>('rg');
  set rg(String? value) => setField<String>('rg', value);

  String? get sexo => getField<String>('sexo');
  set sexo(String? value) => setField<String>('sexo', value);

  String? get estadoCivil => getField<String>('estado civil');
  set estadoCivil(String? value) => setField<String>('estado civil', value);

  String? get escolaridade => getField<String>('escolaridade');
  set escolaridade(String? value) => setField<String>('escolaridade', value);

  String? get cep => getField<String>('cep');
  set cep(String? value) => setField<String>('cep', value);

  String? get endereco => getField<String>('endereco');
  set endereco(String? value) => setField<String>('endereco', value);

  String? get bairro => getField<String>('bairro');
  set bairro(String? value) => setField<String>('bairro', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get uf => getField<String>('uf');
  set uf(String? value) => setField<String>('uf', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);
}
