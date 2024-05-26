import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'pt', 'ru'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? ptText = '',
    String? ruText = '',
  }) =>
      [enText, ptText, ruText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // suppliersList
  {
    'ettmodmt': {
      'en': 'Add New',
      'pt': 'Adicionar novo',
      'ru': 'Добавить новое',
    },
    '1s38sh6d': {
      'en': 'List Of Suppliers',
      'pt': 'Lista de fornecedores',
      'ru': 'Список поставщиков',
    },
    'hqqd1lvf': {
      'en': 'Name',
      'pt': 'Nome',
      'ru': 'Имя',
    },
    'lnz2qis7': {
      'en': 'Category',
      'pt': 'Categoria',
      'ru': 'Категория',
    },
    'imh1pifu': {
      'en': 'Suppliers',
      'pt': 'Home',
      'ru': 'Дом',
    },
  },
  // EditProdutos
  {
    '011r8hjh': {
      'en': 'photo1',
      'pt': 'foto1',
      'ru': 'фото1',
    },
    'kmmqtcnl': {
      'en': 'photo2',
      'pt': 'foto2',
      'ru': 'фото2',
    },
    'vin9c9r8': {
      'en': 'Save',
      'pt': 'Salvar',
      'ru': 'Сохранять',
    },
    'em69r4c1': {
      'en': 'Product Info',
      'pt': 'Info produto',
      'ru': 'Информация ',
    },
    'fitwvdwk': {
      'en': 'Cancel',
      'pt': 'Cancelar',
      'ru': 'Отмена',
    },
    'rpnh7poj': {
      'en': 'Name',
      'pt': 'Nome',
      'ru': 'Имя',
    },
    'k69pqnnp': {
      'en': 'Unit Price\nRMB or USD',
      'pt': 'Preço unitário\nRMB ou USD',
      'ru': 'Цена \nRMB ou USD',
    },
    'nma8k7pf': {
      'en': '拿貨价',
      'pt': '拿貨价',
      'ru': '拿貨价',
    },
    '7bdtxtw7': {
      'en': 'RMB ',
      'pt': 'RMB',
      'ru': 'юаней',
    },
    '4fpi6qc8': {
      'en': 'USD',
      'pt': 'USD',
      'ru': 'USD',
    },
    'gtkn3elt': {
      'en': 'USD',
      'pt': 'USD',
      'ru': 'USD',
    },
    'cpjmlluh': {
      'en': 'Converted Value',
      'pt': 'Valor convertido',
      'ru': 'Cтоимость',
    },
    'tmkngq0o': {
      'en': 'EUR',
      'pt': 'EUR',
      'ru': 'евро',
    },
    '19slga24': {
      'en': 'Converted Value',
      'pt': 'Valor convertido',
      'ru': 'Cтоимость',
    },
    'jhjkxuwh': {
      'en': 'REAL',
      'pt': 'REAL',
      'ru': 'Бразильский Реал',
    },
    '4znlqs9x': {
      'en': 'Converted Value',
      'pt': 'Valor convertido',
      'ru': 'Cтоимость',
    },
    'n67sxync': {
      'en': 'Estimated Final Price After \nImport Costs For Brazilian Users',
      'pt':
          'Preço final estimado após\nCustos de importação para usuários brasileiros',
      'ru':
          'Ориентировочная окончательная цена после\nЗатраты на импорт для бразильских пользователей',
    },
    'oqzpgtvt': {
      'en': 'R\$',
      'pt': 'R\$',
      'ru': 'Р\$',
    },
    '2hvnrdw7': {
      'en': 'Converted Value',
      'pt': 'Valor convertido',
      'ru': 'Cтоимость',
    },
    'oszvjcfh': {
      'en': 'Units per Carton',
      'pt': 'Unidades por caixa',
      'ru': 'Единиц в коробке',
    },
    '7xx4hcxh': {
      'en': '装箱',
      'pt': '装箱',
      'ru': '装箱',
    },
    'hmkq2e67': {
      'en': 'Units/Ctn / 1箱装多少',
      'pt': 'Unidades/Ctn /  1箱装多少',
      'ru': 'Единицы/Ctn / 1 箱装多少',
    },
    'm4hjqwzq': {
      'en': 'MOQ',
      'pt': 'Qtde mín (MOQ)',
      'ru': 'MOQ',
    },
    '46m2d6cm': {
      'en': '几件起订',
      'pt': '几件起订',
      'ru': '几件起订',
    },
    'fdsc7ksd': {
      'en': 'Cartons',
      'pt': 'Caixas',
      'ru': 'Картонные коробки',
    },
    '9k1eu71h': {
      'en': 'Units    ',
      'pt': 'Unidades',
      'ru': 'Единицы',
    },
    'dq51s6ls': {
      'en': 'Carton Size',
      'pt': 'Tamanho da caixa',
      'ru': 'Размер коробки',
    },
    'mhzhfjx0': {
      'en': '体积',
      'pt': '体积',
      'ru': '体积',
    },
    'ovb1l3ro': {
      'en': 'CBM     ',
      'pt': 'CBM (m3)',
      'ru': 'МУП(m3)',
    },
    'j9lk2l1m': {
      'en': 'Lead Days',
      'pt': 'Prazo entrega',
      'ru': 'время выполнения',
    },
    'shnwy396': {
      'en': '几天交货',
      'pt': '几天交货',
      'ru': '几天交货',
    },
    '67784jl8': {
      'en': 'Days    ',
      'pt': 'Dias',
      'ru': 'Дни',
    },
    'lx6cx4gd': {
      'en': 'Order Quantity',
      'pt': 'Qtde do pedido',
      'ru': 'Заказанное Кол.',
    },
    'fno5rehk': {
      'en': '订单数量',
      'pt': '订单数量',
      'ru': '订单数量',
    },
    'x8mz3lxn': {
      'en': 'Cartons',
      'pt': 'Caixas',
      'ru': 'Картонные коробки',
    },
    'kaxwq6wd': {
      'en': 'Units    ',
      'pt': 'Unidades',
      'ru': 'Единицы',
    },
    '30kpnv2f': {
      'en': 'Notes:',
      'pt': 'Notas:',
      'ru': 'Примечания:',
    },
    'tsyp9g5h': {
      'en': 'Home',
      'pt': 'Home',
      'ru': 'Дом',
    },
  },
  // Suppliers
  {
    'jbe028ws': {
      'en': 'Business card \nphoto',
      'pt': 'Cartão de visitas\nfoto',
      'ru': 'Визитная карточка\nФото',
    },
    'yna576un': {
      'en': 'Supplier\n photo',
      'pt': 'Fornecedor\n foto',
      'ru': 'Поставщик\n Фото',
    },
    'zmtn8fzs': {
      'en': 'Add Product',
      'pt': 'Adicionar produto',
      'ru': 'Добавить товар',
    },
    'yhw32mz1': {
      'en': 'View Products',
      'pt': 'Ver produtos',
      'ru': 'Посмотреть товары',
    },
    '2vuv6f8c': {
      'en': 'Back',
      'pt': 'Voltar',
      'ru': 'Назад',
    },
    'wfrow1wz': {
      'en': 'Supplier Name',
      'pt': 'Nome do Fornecedor',
      'ru': 'наименование поставщика',
    },
    'd5snv060': {
      'en': 'Category',
      'pt': 'Categoria',
      'ru': 'Категория',
    },
    'd5fqywlo': {
      'en': 'Notes:',
      'pt': 'Notas:',
      'ru': 'Примечания:',
    },
    'j20fgdvo': {
      'en': 'Home',
      'pt': 'Home',
      'ru': 'Дом',
    },
  },
  // EditSuppliers
  {
    'l3exno28': {
      'en': 'Business card \nphoto',
      'pt': 'Cartão de visitas\nfoto',
      'ru': 'Визитная карточка\nФото',
    },
    'jttjpmmu': {
      'en': 'Supplier\n photo',
      'pt': 'Fornecedor\n foto',
      'ru': 'Поставщик\n Фото',
    },
    'vjx9owwz': {
      'en': 'Save/Back',
      'pt': 'Salvar/Voltar',
      'ru': 'Сохранить/Назад',
    },
    'mzo9d9wo': {
      'en': 'Cancel/Back',
      'pt': 'Cancelar/Voltar',
      'ru': 'Отмена/Назад',
    },
    '9yimox1u': {
      'en': 'Delete',
      'pt': 'Excluir',
      'ru': 'Удалить',
    },
    '2bnyph6d': {
      'en': 'Supplier Name',
      'pt': 'Nome do Fornecedor',
      'ru': 'наименование поставщика',
    },
    '1wua0c2y': {
      'en': 'write supplier name here...',
      'pt': 'escreva o nome do fornecedor aqui...',
      'ru': 'напишите здесь название поставщика...',
    },
    'cc44jrii': {
      'en': 'Category',
      'pt': 'Categoria',
      'ru': 'Категория',
    },
    'wcub86op': {
      'en': 'select category...',
      'pt': 'Selecione a Categoria...',
      'ru': 'выберите категорию...',
    },
    'th1na1u0': {
      'en': 'Search for an item...',
      'pt': 'Procure um item...',
      'ru': 'Искать предмет...',
    },
    'shi3enl3': {
      'en': 'Notes:',
      'pt': 'Notas:',
      'ru': 'Примечания:',
    },
    'nmz80wt7': {
      'en': 'write your comments here....',
      'pt': 'escreva seus comentários aqui....',
      'ru': 'пишите сюда свои комментарии....',
    },
    'ncst3axh': {
      'en': 'Field is required',
      'pt': 'Campo é obrigatório',
      'ru': 'Поле, обязательное для заполнения',
    },
    '4h0b0rsn': {
      'en': 'write at least 4 letters',
      'pt': 'escreva pelo menos 4 letras',
      'ru': 'напишите минимум 4 буквы',
    },
    '69vgpsxm': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
      'ru': 'Пожалуйста, выберите вариант из раскрывающегося списка',
    },
    'w9xkjj1a': {
      'en': 'Field is required',
      'pt': 'Campo é obrigatório',
      'ru': 'Поле, обязательное для заполнения',
    },
    'sco6fmd1': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
      'ru': 'Пожалуйста, выберите вариант из раскрывающегося списка',
    },
    'qymixtbx': {
      'en': 'Home',
      'pt': 'Home',
      'ru': 'Дом',
    },
  },
  // home
  {
    '16g1dlgm': {
      'en': 'Keep Yourself Organized',
      'pt': 'Mantenha-se organizado',
      'ru': 'Держите себя организованным',
    },
    'vgy7k6yn': {
      'en': 'Search suppliers....',
      'pt': 'Pesquisar fornecedores....',
      'ru': 'Поиск поставщиков....',
    },
    'soccheuo': {
      'en': 'Start adding Suppliers !',
      'pt': 'Comece a adicionar fornecedores!',
      'ru': 'Начните добавлять поставщиков!',
    },
    'wm25wxdn': {
      'en': 'Suppliers',
      'pt': 'Fornecedores',
      'ru': 'Поставщики',
    },
    'j7colmga': {
      'en': 'Log Out',
      'pt': 'Log Out',
      'ru': 'LogOut',
    },
    'vkt5yxg1': {
      'en': 'Home',
      'pt': 'Home',
      'ru': 'Дом',
    },
  },
  // login
  {
    '76bitzv8': {
      'en': 'Email',
      'pt': 'E-mail',
      'ru': 'Электронная почта',
    },
    'uaqsmze5': {
      'en': 'Password',
      'pt': 'Senha',
      'ru': 'Пароль',
    },
    '1cf7cytv': {
      'en': 'Sign in with email',
      'pt': 'Faça login com e-mail',
      'ru': 'Войти с помощью электронной почты',
    },
    '5ytuuujh': {
      'en': 'Create Account',
      'pt': 'Criar uma conta',
      'ru': 'Зарегистрироваться',
    },
    'u586hfgg': {
      'en': 'Home',
      'pt': 'Home',
      'ru': 'Дом',
    },
  },
  // createAccount
  {
    'lfasygu7': {
      'en': 'Email',
      'pt': 'E-mail',
      'ru': 'Электронная почта',
    },
    'qvxfw01w': {
      'en': 'Password (6 numbers)',
      'pt': 'Senha',
      'ru': 'Пароль',
    },
    'mojhdn23': {
      'en': 'Confirm Password',
      'pt': 'Senha',
      'ru': 'Пароль',
    },
    'l17vl8ld': {
      'en': 'Create Account',
      'pt': 'Criar uma conta',
      'ru': 'Зарегистрироваться',
    },
    'rbpnup83': {
      'en': 'Already have an account?',
      'pt': 'já tem uma conta?',
      'ru': 'У вас уже есть аккаунт?',
    },
    '6j3tizrl': {
      'en': 'Home',
      'pt': 'Lar',
      'ru': 'Дом',
    },
  },
  // Produtos1
  {
    'h4mq27va': {
      'en': 'photo1',
      'pt': 'foto1',
      'ru': 'фото1',
    },
    'qe27xrru': {
      'en': 'photo2',
      'pt': 'foto2',
      'ru': 'фото2',
    },
    '0x0dg3hb': {
      'en': 'Back',
      'pt': 'Voltar',
      'ru': 'Назад',
    },
    'cpxnreo7': {
      'en': 'Product Info',
      'pt': 'Info produto',
      'ru': 'Информация ',
    },
    'tbfnkpy6': {
      'en': 'Name',
      'pt': 'Nome',
      'ru': 'Имя',
    },
    'niovc6hj': {
      'en': 'Unit Price\nRMB or USD',
      'pt': 'Preço unitário\nRMB ou USD',
      'ru': 'Цена \nюаней или USD',
    },
    '3txxap08': {
      'en': '拿貨价',
      'pt': '拿貨价',
      'ru': '拿貨价',
    },
    'giqsr5sp': {
      'en': 'RMB ',
      'pt': 'RMB',
      'ru': 'юаней',
    },
    '03u4bjyf': {
      'en': 'USD',
      'pt': 'USD',
      'ru': 'USD',
    },
    'zbq163vp': {
      'en': 'USD',
      'pt': 'USD',
      'ru': 'USD',
    },
    '1e7gop1n': {
      'en': 'Converted Value',
      'pt': 'Valor convertido',
      'ru': 'Cтоимость',
    },
    'dqkymzxf': {
      'en': 'EUR',
      'pt': 'EUR',
      'ru': 'евро',
    },
    'f91kdb9j': {
      'en': 'Converted Value',
      'pt': 'Valor convertido',
      'ru': 'Cтоимость',
    },
    'lm79nt3k': {
      'en': 'REAL',
      'pt': 'REAL',
      'ru': 'Бразильский реал',
    },
    '3lfrpazt': {
      'en': 'Converted Value',
      'pt': 'Valor convertido',
      'ru': 'Cтоимость',
    },
    'ab73a3w5': {
      'en': 'Estimated Final Price After \nImport Costs For Brazilian Users',
      'pt':
          'Preço final estimado após\nCustos de importação para usuários brasileiros',
      'ru':
          'Ориентировочная окончательная цена после\nЗатраты на импорт для бразильских пользователей',
    },
    'f4qvqt9z': {
      'en': 'R\$',
      'pt': 'R\$',
      'ru': 'Р\$',
    },
    'nxxj6qgl': {
      'en': 'Converted Value',
      'pt': 'Valor convertido',
      'ru': 'Cтоимость',
    },
    'iy6sl74k': {
      'en': 'Units per Carton',
      'pt': 'Unidades por caixa',
      'ru': 'Единиц в коробке',
    },
    'lzddjw23': {
      'en': '装箱',
      'pt': '装箱',
      'ru': '装箱',
    },
    '7novkpxb': {
      'en': 'Units/Ctn / 1箱装多少',
      'pt': 'Unidades/Cx / 1箱装多少',
      'ru': 'Единицы/Ctn / 1 箱装多少',
    },
    '30xwkcek': {
      'en': 'MOQ',
      'pt': 'Qtde mín (MOQ)',
      'ru': 'MOQ',
    },
    'bz04nw43': {
      'en': '几件起订',
      'pt': '几件起订',
      'ru': '几件起订',
    },
    'cijgfxi4': {
      'en': 'Cartons',
      'pt': 'Caixas',
      'ru': 'Картонные коробки',
    },
    '7gbmlm25': {
      'en': 'Units    ',
      'pt': 'Unidades',
      'ru': 'Единицы',
    },
    '7oz24y1j': {
      'en': 'Carton Size',
      'pt': 'Tamanho caixa',
      'ru': 'Размер коробки',
    },
    '1xxskztg': {
      'en': '体积',
      'pt': '体积',
      'ru': '体积',
    },
    'ckvqpf78': {
      'en': 'CBM     ',
      'pt': 'CBM (m3)',
      'ru': 'МУП(m3)',
    },
    'vk8kgb1m': {
      'en': 'Lead Days',
      'pt': 'Prazo entrega',
      'ru': 'время выполнения',
    },
    'ex43a6v9': {
      'en': '几天交货',
      'pt': '几天交货',
      'ru': '几天交货',
    },
    '1gholxn4': {
      'en': 'Days    ',
      'pt': 'Dias',
      'ru': 'Дни',
    },
    'edta7pkj': {
      'en': 'Order Quantity',
      'pt': 'Qtde pedido',
      'ru': 'Заказанное Кол.',
    },
    '39fshwwk': {
      'en': '订单数量',
      'pt': '订单数量',
      'ru': '订单数量',
    },
    'gmlhmox0': {
      'en': 'Cartons',
      'pt': 'Caixas',
      'ru': 'Коробки',
    },
    '37f03lon': {
      'en': 'Units    ',
      'pt': 'Unidades',
      'ru': 'Единицы',
    },
    'lj960ntf': {
      'en': 'Notes:',
      'pt': 'Notas:',
      'ru': 'Примечания:',
    },
    'wquvntir': {
      'en': 'Home',
      'pt': 'Home',
      'ru': 'Дом',
    },
  },
  // addProdutos1
  {
    'q3ppqyti': {
      'en': 'photo1',
      'pt': 'foto1',
      'ru': 'фото1',
    },
    '7ci34w10': {
      'en': 'photo2',
      'pt': 'foto2',
      'ru': 'фото2',
    },
    '0o74x5cm': {
      'en': 'Save',
      'pt': 'Salvar',
      'ru': 'Сохранять',
    },
    'bkh3gnmk': {
      'en': 'Product Info',
      'pt': 'Info produto',
      'ru': 'Информация ',
    },
    'bhuv2yuq': {
      'en': 'Cancel',
      'pt': 'Cancelar',
      'ru': 'Отмена',
    },
    'e136wmlz': {
      'en': 'write product name...',
      'pt': 'escreva o nome do produto...',
      'ru': 'напишите название продукта...',
    },
    'ddet7ick': {
      'en': 'Name',
      'pt': 'Nome',
      'ru': 'Имя',
    },
    'pec6hnh9': {
      'en': 'Unit Price\nRMB or USD',
      'pt': 'Preço unitário\nRMB ou USD',
      'ru': 'Цена \nюаней или USD',
    },
    '7qheoydh': {
      'en': '拿貨价',
      'pt': '拿貨价',
      'ru': '拿貨价',
    },
    'e69bg003': {
      'en': 'RMB ',
      'pt': 'RMB',
      'ru': 'юаней',
    },
    'txyt6q6v': {
      'en': 'write  price here..',
      'pt': 'escreva o preço aqui..',
      'ru': 'напишите цену здесь..',
    },
    '4e7yvmwa': {
      'en': 'USD',
      'pt': 'USD',
      'ru': 'USD',
    },
    'vushd9jk': {
      'en': 'write  price here..',
      'pt': 'escreva o preço aqui..',
      'ru': 'напишите цену здесь..',
    },
    'b8xsh9ht': {
      'en': 'USD',
      'pt': 'USD',
      'ru': 'USD',
    },
    '35408ul2': {
      'en': 'Converted Value',
      'pt': 'Valor convertido',
      'ru': 'Cтоимость',
    },
    'fiaody33': {
      'en': 'EUR',
      'pt': 'EUR',
      'ru': 'евро',
    },
    'wzqyc4mc': {
      'en': 'Converted Value',
      'pt': 'Valor convertido',
      'ru': 'Cтоимость',
    },
    'necptscc': {
      'en': 'REAL',
      'pt': 'REAL',
      'ru': 'Бразильский реал',
    },
    'lohye8yp': {
      'en': 'Converted Value',
      'pt': 'Valor convertido',
      'ru': 'Cтоимость',
    },
    'ssjgv15j': {
      'en': 'Estimated Final Price After \nImport Costs For Brazilian Users',
      'pt':
          'Preço final estimado após\nCustos de importação para usuários brasileiros',
      'ru':
          'Ориентировочная окончательная цена после\nЗатраты на импорт для бразильских пользователей',
    },
    'amroeiry': {
      'en': 'R\$',
      'pt': 'R\$',
      'ru': 'Р\$',
    },
    'kbxpvukg': {
      'en': 'Converted Value',
      'pt': 'Valor convertido',
      'ru': 'Cтоимость',
    },
    'o658miz3': {
      'en': 'Units per Carton',
      'pt': 'Unidades por caixa',
      'ru': 'Единиц в коробке',
    },
    '1oudrt2x': {
      'en': '装箱',
      'pt': '装箱',
      'ru': '装箱',
    },
    '9fipldsd': {
      'en': 'Quantity..',
      'pt': 'Quantidade..',
      'ru': 'Количество..',
    },
    '561sf15k': {
      'en': 'Units/Ctn / 1箱装多少',
      'pt': 'Unid/Cx/1箱装多少',
      'ru': 'Единицы/Ctn / 1 箱装多少',
    },
    '0xxf2p0f': {
      'en': 'MOQ',
      'pt': 'Qtde mín (MOQ)',
      'ru': 'MOQ',
    },
    '2f5szxhu': {
      'en': '几件起订',
      'pt': '几件起订',
      'ru': '几件起订',
    },
    '3iboq20h': {
      'en': 'Quantity..',
      'pt': 'Quantidade..',
      'ru': 'Количество..',
    },
    'p4fzxe0s': {
      'en': 'Cartons',
      'pt': 'Caixas',
      'ru': 'Картонные коробки',
    },
    '3s38drca': {
      'en': 'Quantity..',
      'pt': 'Quantidade..',
      'ru': 'Количество..',
    },
    'yzj6s34f': {
      'en': 'Units    ',
      'pt': 'Unidades',
      'ru': 'Единицы',
    },
    'lwc0lf24': {
      'en': 'Carton Size',
      'pt': 'Tamanho da caixa',
      'ru': 'Размер коробки',
    },
    'sjux0cm6': {
      'en': '体积',
      'pt': '体积',
      'ru': '体积',
    },
    'yzl2kb0c': {
      'en': 'Quantity..',
      'pt': 'Quantidade..',
      'ru': 'Количество..',
    },
    'k95jc9up': {
      'en': 'CBM     ',
      'pt': 'CBM (m3)',
      'ru': 'МУП(m3)',
    },
    'fg9399me': {
      'en': 'Lead Days',
      'pt': 'Prazo Entrega',
      'ru': 'время выполнения',
    },
    'efu6pq5b': {
      'en': '几天交货',
      'pt': '几天交货',
      'ru': '几天交货',
    },
    '89d3w4l5': {
      'en': 'Quantity..',
      'pt': 'Quantidade..',
      'ru': 'Количество..',
    },
    'o7eetxxa': {
      'en': 'Days    ',
      'pt': 'Dias',
      'ru': 'Дни',
    },
    'rheagngi': {
      'en': 'Order Quantity',
      'pt': 'Qtde pedido',
      'ru': 'Количество',
    },
    'r1x1e64s': {
      'en': '订单数量',
      'pt': '订单数量',
      'ru': '订单数量',
    },
    'ngm8au0x': {
      'en': 'Quantity..',
      'pt': 'Quantidade..',
      'ru': 'Количество..',
    },
    'z6yo00i6': {
      'en': 'Cartons',
      'pt': 'Caixas',
      'ru': 'Коробки',
    },
    'zkq4v8ds': {
      'en': 'Quantity..',
      'pt': 'Quantidade..',
      'ru': 'Количество..',
    },
    'm5a26lzx': {
      'en': 'Units    ',
      'pt': 'Unidades',
      'ru': 'Единицы',
    },
    'm6r9tpvt': {
      'en': 'Notes:',
      'pt': 'Notas:',
      'ru': 'Примечания:',
    },
    'hrsf3ukp': {
      'en': 'write product description here...',
      'pt': 'escreva a descrição do produto aqui...',
      'ru': 'напишите здесь описание товара...',
    },
    '3soewu8k': {
      'en': 'Home',
      'pt': 'Home',
      'ru': 'Дом',
    },
  },
  // AddCategory
  {
    'yhr7ghi3': {
      'en': 'Add  New Category',
      'pt': 'Adicionar nova categoria',
      'ru': 'Добавить новую категорию',
    },
    '1kihoqti': {
      'en': 'write category name here...',
      'pt': 'escreva o nome da categoria aqui...',
      'ru': 'напишите здесь название категории...',
    },
    'uddjwhrj': {
      'en': 'Save/Back',
      'pt': 'Salvar/Voltar',
      'ru': 'Сохранить/Назад',
    },
    'q4t4r08p': {
      'en': 'Cancel',
      'pt': 'Cancelar',
      'ru': 'Отмена',
    },
    'e3ruafec': {
      'en': 'Delete Category',
      'pt': 'Excluir categoria',
      'ru': 'Удалить категорию',
    },
    'g7unt592': {
      'en': 'Option 1',
      'pt': 'Opção 1',
      'ru': 'Опция 1',
    },
    'a0cmxm1d': {
      'en': 'select category...',
      'pt': 'Selecione a Categoria...',
      'ru': 'выберите категорию...',
    },
    'kto350g0': {
      'en': 'Search for an item...',
      'pt': 'Procure um item...',
      'ru': 'Искать предмет...',
    },
    'pi2px10d': {
      'en': 'Delete',
      'pt': 'Excluir',
      'ru': 'Удалить',
    },
    'd1mkiyz2': {
      'en': 'Field is required',
      'pt': 'Campo é obrigatório',
      'ru': 'Поле, обязательное для заполнения',
    },
    '43o0kh7x': {
      'en': 'write at least 4 letters',
      'pt': 'escreva pelo menos 4 letras',
      'ru': 'напишите минимум 4 буквы',
    },
    'bo62nmd8': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
      'ru': 'Пожалуйста, выберите вариант из раскрывающегося списка',
    },
    'b27qtf2z': {
      'en': 'Home',
      'pt': 'Home',
      'ru': 'Дом',
    },
  },
  // addSupplier1
  {
    'edmrprkx': {
      'en': 'Business card \nphoto',
      'pt': 'Cartão de visitas\nfoto',
      'ru': 'Визитная карточка\nФото',
    },
    '01k1ijz8': {
      'en': 'Supplier\n photo',
      'pt': 'Fornecedor\n foto',
      'ru': 'Поставщик\n Фото',
    },
    'fwxr3hx7': {
      'en': 'Back',
      'pt': 'Voltar',
      'ru': 'Назад',
    },
    '8pskeyqa': {
      'en': 'Save Supplier',
      'pt': 'Salvar fornecedor',
      'ru': 'Сохранить поставщика',
    },
    'ahuqj3kx': {
      'en': 'Save Supplier/Add Product',
      'pt': 'Salvar /adicionar produto',
      'ru': 'Сохранит/добавит товар',
    },
    '4klffoc1': {
      'en': 'Supplier Name',
      'pt': 'Nome do Fornecedor',
      'ru': 'наименование поставщика',
    },
    'goemxv8c': {
      'en': 'write supplier name here...',
      'pt': 'escreva o nome do fornecedor aqui...',
      'ru': 'напишите здесь название поставщика...',
    },
    'hik04ce7': {
      'en': 'Category',
      'pt': 'Categoria',
      'ru': 'Категория',
    },
    '9dpqixag': {
      'en': 'Option 1',
      'pt': 'Opção 1',
      'ru': 'Опция 1',
    },
    '2exgahqr': {
      'en': 'select category...',
      'pt': 'Selecione a Categoria...',
      'ru': 'выберите категорию...',
    },
    'pzmgyf0z': {
      'en': 'Search for an item...',
      'pt': 'Procure um item...',
      'ru': 'Искать предмет...',
    },
    'uxp7swft': {
      'en': 'Add New Category',
      'pt': 'Adicionar nova categoria',
      'ru': 'Добавить новую категорию',
    },
    '9f31pmqk': {
      'en': 'Notes:',
      'pt': 'Notas:',
      'ru': 'Примечания:',
    },
    'is4ghpct': {
      'en': 'write your comments here....',
      'pt': 'escreva seus comentários aqui....',
      'ru': 'пишите сюда свои комментарии....',
    },
    'i65ftsgd': {
      'en': 'Home',
      'pt': 'Home',
      'ru': 'Дом',
    },
  },
  // produtosList
  {
    '5fdzzsxj': {
      'en': 'Back',
      'pt': 'Voltar',
      'ru': 'Назад',
    },
    'c3yiau01': {
      'en': 'List Of Products',
      'pt': 'Lista de produtos',
      'ru': 'Список продуктов',
    },
    'ajlkpv3j': {
      'en': 'Home',
      'pt': 'Home',
      'ru': 'Дом',
    },
  },
  // PrivacyPolicies
  {
    '7chz35px': {
      'en': 'Home',
      'pt': '',
      'ru': '',
    },
  },
  // Miscellaneous
  {
    'pzjwzsxi': {
      'en':
          'In order to take a picture or video , this app requires permission to access the camera.',
      'pt':
          'Para tirar uma foto ou gravar um vídeo, este aplicativo requer permissão para acessar a câmera',
      'ru':
          'Чтобы сделать фото или видео, этому приложению требуется разрешение на доступ к камере.',
    },
    'c55m1oab': {
      'en':
          'In order to upload data , this app requires permission to access the photo library.',
      'pt':
          'Para fazer upload de dados, este aplicativo requer permissão para acessar a biblioteca de fotos.',
      'ru':
          'Чтобы загрузить данные, этому приложению требуется разрешение на доступ к библиотеке фотографий.',
    },
    '1tookjb3': {
      'en': 'Error:[error]',
      'pt': 'Error:[error]',
      'ru': 'Error:[error]',
    },
    'l2pgiure': {
      'en': 'Password reset email sent !',
      'pt': 'E-mail de redefinição de senha enviado!',
      'ru': 'Письмо для сброса пароля отправлено!',
    },
    'mggi32ai': {
      'en': 'Email required !',
      'pt': 'Email obrigatório !',
      'ru': 'Требуется электронная почта!',
    },
    'bc64phjv': {
      'en': 'Phone number required and has to start with +.',
      'pt': 'O número de telefone é obrigatório e deve começar com +.',
      'ru': 'Номер телефона обязателен и должен начинаться с +.',
    },
    'ydl07m4k': {
      'en': 'Passwords don\'t match.',
      'pt': 'As senhas não coincidem.',
      'ru': 'Пароли не совпадают.',
    },
    'e93krzlq': {
      'en': 'Enter SMS verification code.',
      'pt': 'Insira o código de verificação  SMS.',
      'ru': 'Введите SMS-код подтверждения.',
    },
    'sefozmp1': {
      'en':
          'Too long since most recent sign in. Sign in again before deleting your account.',
      'pt':
          'Muito tempo desde o login mais recente. Faça login novamente antes de excluir sua conta.',
      'ru':
          'Слишком много времени прошло с момента последнего входа в систему. Войдите еще раз, прежде чем удалять свою учетную запись.',
    },
    'esvki8de': {
      'en':
          'Too long since most recent sign in. Sign in again before updating your email.',
      'pt':
          'Muito tempo desde o login mais recente. Faça login novamente antes de atualizar seu e-mail.',
      'ru':
          'Прошло слишком много времени с момента последнего входа в систему. Прежде чем обновлять адрес электронной почты, войдите в систему еще раз.',
    },
    '7eq6rgps': {
      'en': 'Email change confirmation sent !',
      'pt': 'Confirmação de alteração de email enviada!',
      'ru': 'Подтверждение об изменении адреса электронной почты отправлено!',
    },
    '67as89gn': {
      'en': 'Email already in use by another account.',
      'pt': 'E-mail já em uso por outra conta.',
      'ru': 'Электронная почта уже используется другой учетной записью.',
    },
    'esfm6gp3': {
      'en': 'The supplied auth credential is incorrect or has expired.',
      'pt': 'A credencial de autenticação fornecida está incorreta ou expirou.',
      'ru':
          'Предоставленные учетные данные для аутентификации неверны или срок их действия истек.',
    },
    'ao725a0z': {
      'en': '',
      'pt': '',
      'ru': '',
    },
    'c1x3bil4': {
      'en': '',
      'pt': '',
      'ru': '',
    },
    'iutj3ji5': {
      'en': '',
      'pt': '',
      'ru': '',
    },
    'v9gk36gx': {
      'en': '',
      'pt': '',
      'ru': '',
    },
    'gnordxmv': {
      'en': '',
      'pt': '',
      'ru': '',
    },
    '14ug6y9j': {
      'en': '',
      'pt': '',
      'ru': '',
    },
    'h5ug9jue': {
      'en': '',
      'pt': '',
      'ru': '',
    },
    'ewtwvuh0': {
      'en': '',
      'pt': '',
      'ru': '',
    },
    'ph0kaqbb': {
      'en': '',
      'pt': '',
      'ru': '',
    },
    '38zs0rmi': {
      'en': '',
      'pt': '',
      'ru': '',
    },
    '5o7ukipb': {
      'en': '',
      'pt': '',
      'ru': '',
    },
    'oni3tbsf': {
      'en': '',
      'pt': '',
      'ru': '',
    },
    '3g7g1ji2': {
      'en': '',
      'pt': '',
      'ru': '',
    },
    'e2is4a7g': {
      'en': '',
      'pt': '',
      'ru': '',
    },
    '01xcgfwz': {
      'en': 'Change supplier name',
      'pt': '',
      'ru': '',
    },
    'ul4ku9xm': {
      'en': 'Select a new category',
      'pt': '',
      'ru': '',
    },
    'v7ayi9w7': {
      'en': 'Change notes',
      'pt': '',
      'ru': '',
    },
    'lkkgy0vu': {
      'en': 'time',
      'pt': '',
      'ru': '',
    },
    'kkwgos9t': {
      'en':
          'Ask your chinese speaking partner for this information(Hear in chinese)',
      'pt': '',
      'ru': '',
    },
  },
].reduce((a, b) => a..addAll(b));
