import 'currency.dart';

/// Provides a list of the most common currencies.
///
/// The full list of currencies are available when you
/// parse an amount.
///
/// ```dart
/// Currencies.parse('$AUD10.00', pattern: 'SCCC#.#');
/// ```
///
class CommonCurrencies {
  static final CommonCurrencies _self = CommonCurrencies._internal();

  /// Factory constructor.
  factory CommonCurrencies() {
    return _self;
  }

  CommonCurrencies._internal();

  /// Australian Dollar
  final Currency aud = Currency.create('AUD', 2,
      pattern: 'S0.00',
      country: 'Australian',
      unit: 'Dollar',
      name: 'Australian Dollar');

  /// Bitcoin
  final Currency btc = Currency.create('BTC', 8,
      symbol: '₿',
      pattern: 'S0.00000000',
      country: 'Digital',
      unit: 'Bitcoin',
      name: 'Bitcon');

  /// Brazilian Real
  final Currency brl = Currency.create('BRL', 2,
      symbol: r'R$',
      invertSeparators: true,
      pattern: 'S0,00',
      country: 'Brazil',
      unit: 'Real',
      name: 'Brazilian Real');

  /// British Pound Sterling
  final Currency gbp = Currency.create('GBP', 2,
      symbol: '£',
      country: 'Britan',
      unit: 'Pound Sterling',
      name: 'British Pound Sterling');

  /// Canadian Dollar
  final Currency cad = Currency.create('CAD', 2,
      country: 'Canada', unit: 'Dollar', name: 'Canadian Dollar');

  /// Chinese Renminbi
  final Currency cny = Currency.create('CNY', 2,
      symbol: '¥',
      country: 'China',
      unit: 'Renminbi',
      name: 'Chinese Renminbi');

  /// Czech Koruna
  final Currency czk = Currency.create('CZK', 2,
      symbol: 'Kč',
      invertSeparators: true,
      pattern: '0,00S',
      country: 'Czech',
      unit: 'Koruna',
      name: 'Czech Koruna');

  /// European Union Euro
  final Currency euro = Currency.create('EUR', 2,
      symbol: '€',
      invertSeparators: true,
      pattern: '0,00S',
      country: 'European Union',
      unit: 'Euro',
      name: 'European Union Euro');

  /// Ghana Cedi
  final Currency ghs = Currency.create('GHS', 2,
      symbol: '₵',
      pattern: 'S0.00',
      country: 'Ghana',
      unit: 'Cedi',
      name: 'Ghana Cedi');

  /// Indian Rupee
  final Currency inr = Currency.create('INR', 2,
      symbol: '₹',
      pattern: 'S0.00',
      country: 'Indian',
      unit: 'Rupee',
      name: 'Indian Rupee');

  /// Japanese Yen
  final Currency jpy = Currency.create('JPY', 0,
      symbol: '¥',
      pattern: 'S0',
      country: 'Japanese',
      unit: 'Yen',
      name: 'Japanese Yen');

  /// Mexican Peso
  final Currency mxn = Currency.create('MXN', 2,
      country: 'Mexican', unit: 'Peso', name: 'Mexican Peso');

  /// New Zealand Dollar
  final Currency nzd = Currency.create('NZD', 2,
      country: 'New Zealand', unit: 'Dollar', name: 'New Zealand Dollar');

  /// Nigerian Naira
  final Currency ngn = Currency.create('NGN', 2,
      symbol: '₦',
      pattern: 'S0.00',
      country: 'Nigerian',
      unit: 'Naira',
      name: 'Nigerian Naira');

  /// Norwegian Krone
  final Currency nok = Currency.create('NOK', 2,
      symbol: 'kr',
      country: 'Norwegian',
      unit: 'Krone',
      name: 'Norwegian Krone');

  /// Polish Zloty
  final Currency pln = Currency.create('PLN', 2,
      symbol: 'zł',
      invertSeparators: true,
      pattern: '0,00S',
      country: 'Polish',
      unit: 'Zloty',
      name: 'Polish Zloty');

  /// South African Rand
  final Currency zar = Currency.create('ZAR', 2,
      symbol: 'R',
      country: 'South African',
      unit: 'Rand',
      name: 'South African Rand');

  /// South Korean Won
  final Currency krw = Currency.create('KRW', 0,
      symbol: '₩',
      pattern: 'S0',
      country: 'South Korean',
      unit: 'Won',
      name: 'South Korean Won');

  /// Swiss Franc
  final Currency chf = Currency.create('CHF', 2,
      symbol: 'fr', country: 'Switzerland', unit: 'Franc', name: 'Swiss Franc');

  /// New Taiwan Dollar
  final Currency twd = Currency.create('TWD', 0,
      symbol: r'NT$',
      pattern: 'S0',
      country: 'New Taiwan',
      unit: 'Dollar',
      name: 'New Taiwan Dollar');

  /// Turkish Lira
  final Currency ltry = Currency.create('TRY', 2,
      symbol: '₺', country: 'Turkish', unit: 'Lira', name: 'Turkish Lira');

  /// Russian Ruble
  final Currency rub = Currency.create('RUB', 2,
      symbol: '₽', country: 'Russia', unit: 'Ruble', name: 'Russian Ruble');

  /// United States Dollar
  final Currency usd = Currency.create('USD', 2,
      country: 'United States of America',
      unit: 'Dollar',
      name: 'United States Dollar');

  final Currency AED = Currency.create(
    'AED',
    2,
    name: 'Emirati Dirham',
    symbol: r'د.إ',
  );
  final Currency AFN = Currency.create(
    'AFN',
    2,
    name: 'Afghan Afghani',
    symbol: r'؋',
  );
  final Currency ALL = Currency.create(
    'ALL',
    2,
    name: 'Albanian Lek',
    symbol: r'L',
  );
  final Currency AMD = Currency.create(
    'AMD',
    2,
    name: 'Armenian Dram',
    symbol: r'դր.',
  );
  final Currency ANG = Currency.create(
    'ANG',
    2,
    name: 'Dutch Guilder',
    symbol: r'ƒ',
  );
  final Currency AOA = Currency.create(
    'AOA',
    2,
    name: 'Angolan Kwanza',
    symbol: r'Kz',
  );
  final Currency ARS = Currency.create(
    'ARS',
    2,
    name: 'Argentine Peso',
    symbol: r'$',
  );
  final Currency AWG = Currency.create(
    'AWG',
    2,
    name: 'Aruba Guilder',
    symbol: r'ƒ',
  );
  final Currency AZN = Currency.create(
    'AZN',
    2,
    name: 'Azerbaijan Manat',
    symbol: r'₼',
  );
  final Currency BAM = Currency.create(
    'BAM',
    2,
    name: 'Bosnian Convertible Marka',
    symbol: r'KM',
  );
  final Currency BBD = Currency.create(
    'BBD',
    2,
    name: 'Barbadian Dollar',
    symbol: r'$',
  );
  final Currency BDT = Currency.create(
    'BDT',
    2,
    name: 'Bangladeshi Taka',
    symbol: r'৳',
  );
  final Currency BGN = Currency.create(
    'BGN',
    2,
    name: 'Bulgarian Lev',
    symbol: r'лв.',
  );
  final Currency BIF = Currency.create(
    'BIF',
    0,
    name: 'Burundian Franc',
    symbol: r'Fr',
  );
  final Currency BMD = Currency.create(
    'BMD',
    2,
    name: 'Bermudian Dollar',
    symbol: r'$',
  );
  final Currency BND = Currency.create(
    'BND',
    2,
    name: 'Brunei Dollar',
    symbol: r'$',
  );
  final Currency BOB = Currency.create(
    'BOB',
    2,
    name: 'Bolivian Boliviano',
    symbol: r'$b',
  );
  final Currency BSD = Currency.create(
    'BSD',
    2,
    name: 'Bahamian Dollar',
    symbol: r'B$',
  );
  final Currency BWP = Currency.create(
    'BWP',
    2,
    name: 'Botswana Pula',
    symbol: r'P',
  );
  final Currency BZD = Currency.create(
    'BZD',
    2,
    name: 'Belize Dollar',
    symbol: r'$',
  );
  final Currency CDF = Currency.create(
    'CDF',
    2,
    name: 'Congolese franc',
    symbol: r'Fr',
  );
  final Currency CLP = Currency.create(
    'CLP',
    0,
    name: 'Chilean Peso',
    symbol: r'$',
  );
  final Currency COP = Currency.create(
    'COP',
    2,
    name: 'Colombian Peso',
    symbol: r'$',
  );
  final Currency CRC = Currency.create(
    'CRC',
    2,
    name: 'Costa Rican Colón',
    symbol: r'₡',
  );
  final Currency CVE = Currency.create(
    'CVE',
    2,
    name: 'Cape Verdean Escudo',
    symbol: r'Esc',
  );
  final Currency DJF = Currency.create(
    'DJF',
    0,
    name: 'Djiboutian Franc',
    symbol: r'Fdj',
  );
  final Currency DKK = Currency.create(
    'DKK',
    2,
    name: 'Danish Krone',
    symbol: r'kr',
  );
  final Currency DOP = Currency.create(
    'DOP',
    2,
    name: 'Dominican Peso',
    symbol: r'RD$',
  );
  final Currency DZD = Currency.create(
    'DZD',
    2,
    name: 'Algerian Dinar',
    symbol: r'د.ج',
  );
  final Currency EGP = Currency.create(
    'EGP',
    2,
    name: 'Egyptian Pound',
    symbol: r'ج.م',
  );
  final Currency ETB = Currency.create(
    'ETB',
    2,
    name: 'Ethiopian Birr',
    symbol: r'ብር',
  );
  final Currency FJD = Currency.create(
    'FJD',
    2,
    name: 'Fijian Dollar',
    symbol: r'$',
  );
  final Currency FKP = Currency.create(
    'FKP',
    2,
    name: 'Falkland Islands Pound',
    symbol: r'FK£',
  );
  final Currency GEL = Currency.create(
    'GEL',
    2,
    name: 'Georgian Lari',
    symbol: r'ლ',
  );
  final Currency GIP = Currency.create(
    'GIP',
    2,
    name: 'Gibraltar Pound',
    symbol: r'£',
  );
  final Currency GMD = Currency.create(
    'GMD',
    2,
    name: 'Gambian Dalasi',
    symbol: r'D',
  );
  final Currency GNF = Currency.create(
    'GNF',
    0,
    name: 'Guinean Franc',
    symbol: r'Fr',
  );
  final Currency GTQ = Currency.create(
    'GTQ',
    2,
    name: 'Guatemalan Quetzal',
    symbol: r'Q',
  );
  final Currency GYD = Currency.create(
    'GYD',
    2,
    name: 'Guyanese Dollar',
    symbol: r'$',
  );
  final Currency HKD = Currency.create(
    'HKD',
    2,
    name: 'Hong Kong Dollar',
    symbol: r'$',
  );
  final Currency HNL = Currency.create(
    'HNL',
    2,
    name: 'Honduran Lempira',
    symbol: r'L',
  );
  final Currency HRK = Currency.create(
    'HRK',
    2,
    name: 'Croatian Kuna',
    symbol: r'kn',
  );
  final Currency HTG = Currency.create(
    'HTG',
    2,
    name: 'Haitian Gourde',
    symbol: r'G',
  );
  final Currency HUF = Currency.create(
    'HUF',
    2,
    name: 'Hungarian Forint',
    symbol: r'Ft',
  );
  final Currency ILS = Currency.create(
    'ILS',
    2,
    name: 'Israeli New Shekel',
    symbol: r'₪',
  );
  final Currency ISK = Currency.create(
    'ISK',
    0,
    name: 'Icelandic Krona',
    symbol: r'ISK',
  );
  final Currency JMD = Currency.create(
    'JMD',
    2,
    name: 'Jamaican Dollar',
    symbol: r'$',
  );
  final Currency KES = Currency.create(
    'KES',
    2,
    name: 'Kenyan Shilling',
    symbol: r'KSh',
  );
  final Currency KGS = Currency.create(
    'KGS',
    2,
    name: 'Kyrgyzstani Som',
    symbol: r'лв',
  );
  final Currency KHR = Currency.create(
    'KHR',
    2,
    name: 'Cambodian Riel',
    symbol: r'៛',
  );
  final Currency KMF = Currency.create(
    'KMF',
    0,
    name: 'Comorian Franc',
    symbol: r'Fr',
  );
  final Currency KYD = Currency.create(
    'KYD',
    2,
    name: 'Cayman Islands Dollar',
    symbol: r'$',
  );
  final Currency KZT = Currency.create(
    'KZT',
    2,
    name: 'Kazakhstani Tenge',
    symbol: r'₸',
  );
  final Currency LAK = Currency.create(
    'LAK',
    2,
    name: 'Lao Kip',
    symbol: r'₭',
  );
  final Currency LBP = Currency.create(
    'LBP',
    2,
    name: 'Lebanese Pound',
    symbol: r'LL',
  );
  final Currency LKR = Currency.create(
    'LKR',
    2,
    name: 'Sri Lankan Rupee',
    symbol: r'Rs',
  );
  final Currency LRD = Currency.create(
    'LRD',
    2,
    name: 'Liberian Dollar',
    symbol: r'$',
  );
  final Currency LSL = Currency.create(
    'LSL',
    2,
    name: 'Lesotho loti',
    symbol: r'L',
  );
  final Currency MAD = Currency.create(
    'MAD',
    2,
    name: 'Moroccan Dirham',
    symbol: r'DH',
  );
  final Currency MDL = Currency.create(
    'MDL',
    2,
    name: 'Moldovan Leu',
    symbol: r'MDL',
  );
  final Currency MGA = Currency.create(
    'MGA',
    2,
    name: 'Malagasy Ariary',
    symbol: r'Ar',
  );
  final Currency MKD = Currency.create(
    'MKD',
    2,
    name: 'Macedonian Denar',
    symbol: r'ден',
  );
  final Currency MMK = Currency.create(
    'MMK',
    2,
    name: 'Myanmar Kyat',
    symbol: r'K',
  );
  final Currency MNT = Currency.create(
    'MNT',
    2,
    name: 'Mongolian Tughrik',
    symbol: r'₮',
  );
  final Currency MOP = Currency.create(
    'MOP',
    2,
    name: 'Macanese Pataca',
    symbol: r'MOP',
  );
  final Currency MUR = Currency.create(
    'MUR',
    2,
    name: 'Mauritian Rupee',
    symbol: r'Ɍs',
  );
  final Currency MVR = Currency.create(
    'MVR',
    2,
    name: 'Maldivian Rufiyaa',
    symbol: r'Rf',
  );
  final Currency MWK = Currency.create(
    'MWK',
    2,
    name: 'Malawian Kwacha',
    symbol: r'MK',
  );
  final Currency MYR = Currency.create(
    'MYR',
    2,
    name: 'Malaysian Ringgit',
    symbol: r'RM',
  );
  final Currency MZN = Currency.create(
    'MZN',
    2,
    name: 'Mozambican Metical',
    symbol: r'MT',
  );
  final Currency NAD = Currency.create(
    'NAD',
    2,
    name: 'Namibian Dollar',
    symbol: r'$',
  );
  final Currency NIO = Currency.create(
    'NIO',
    2,
    name: 'Nicaraguan Córdoba',
    symbol: r'C$',
  );
  final Currency NPR = Currency.create(
    'NPR',
    2,
    name: 'Nepalese Rupee',
    symbol: r'रु',
  );
  final Currency PAB = Currency.create(
    'PAB',
    2,
    name: 'Panamanian Balboa',
    symbol: r'B/.',
  );
  final Currency PEN = Currency.create(
    'PEN',
    2,
    name: 'Peruvian Sol',
    symbol: r'S/.',
  );
  final Currency PGK = Currency.create(
    'PGK',
    2,
    name: 'Papua New Guinean Kina',
    symbol: r'K',
  );
  final Currency PHP = Currency.create(
    'PHP',
    2,
    name: 'Philippine Peso',
    symbol: r'₱',
  );
  final Currency PKR = Currency.create(
    'PKR',
    2,
    name: 'Pakistani Rupee',
    symbol: r'Rs',
  );
  final Currency PYG = Currency.create(
    'PYG',
    0,
    name: 'Paraguayan Guarani',
    symbol: r'₲',
  );
  final Currency QAR = Currency.create(
    'QAR',
    2,
    name: 'Qatari Riyal',
    symbol: r'ر.ق',
  );
  final Currency RON = Currency.create(
    'RON',
    2,
    name: 'Romanian Leu',
    symbol: r'lei',
  );
  final Currency RSD = Currency.create(
    'RSD',
    2,
    name: 'Serbian Diner',
    symbol: r'Дин',
  );
  final Currency RWF = Currency.create(
    'RWF',
    0,
    name: 'Rwandan Franc',
    symbol: r'FRw',
  );
  final Currency SAR = Currency.create(
    'SAR',
    2,
    name: 'Saudi Arabian Riyal',
    symbol: r'ر.س',
  );
  final Currency SBD = Currency.create(
    'SBD',
    2,
    name: 'Solomon Islands Dollar',
    symbol: r'$',
  );
  final Currency SCR = Currency.create(
    'SCR',
    2,
    name: 'Seychellois Rupee',
    symbol: r'Ɍs',
  );
  final Currency SEK = Currency.create(
    'SEK',
    2,
    name: 'Swedish Krona',
    symbol: r'kr',
  );
  final Currency SGD = Currency.create(
    'SGD',
    2,
    name: 'Singapore Dollar',
    symbol: r'$',
  );
  final Currency SLL = Currency.create(
    'SLL',
    2,
    name: 'Sierra Leonean Leone',
    symbol: r'Le',
  );
  final Currency SOS = Currency.create(
    'SOS',
    2,
    name: 'Somali Shilling',
    symbol: r'SOS',
  );
  final Currency SRD = Currency.create(
    'SRD',
    2,
    name: 'Surinamese Dollar',
    symbol: r'$',
  );
  final Currency SVC = Currency.create(
    'SVC',
    2,
    name: 'Salvadoran Colón',
    symbol: r'SVC',
  );
  final Currency SZL = Currency.create(
    'SZL',
    2,
    name: 'Swazi Lilangeni',
    symbol: r'SZL',
  );
  final Currency THB = Currency.create(
    'THB',
    2,
    name: 'Thai Baht',
    symbol: r'฿',
  );
  final Currency TJS = Currency.create(
    'TJS',
    2,
    name: 'Tajikistani Somoni',
    symbol: r'TJS',
  );
  final Currency TOP = Currency.create(
    'TOP',
    2,
    name: 'Tongan Paanga',
    symbol: r'T$',
  );
  final Currency TTD = Currency.create(
    'TTD',
    2,
    name: 'Trinidad and Tobago Dollar',
    symbol: r'$',
  );
  final Currency TZS = Currency.create(
    'TZS',
    2,
    name: 'Tanzanian Shilling',
    symbol: r'TSh',
  );
  final Currency UAH = Currency.create(
    'UAH',
    2,
    name: 'Ukrainian Hryvnia',
    symbol: r'₴',
  );
  final Currency UGX = Currency.create(
    'UGX',
    0,
    name: 'Ugandan Shilling',
    symbol: r'USh',
  );
  final Currency UYU = Currency.create(
    'UYU',
    2,
    name: 'Uruguayan Peso',
    symbol: r'$',
  );
  final Currency UZS = Currency.create(
    'UZS',
    2,
    name: 'Uzbekistani Som',
    symbol: r'лв',
  );
  final Currency VND = Currency.create(
    'VND',
    0,
    name: 'Vietnamese Đồng',
    symbol: r'₫',
  );
  final Currency VUV = Currency.create(
    'VUV',
    0,
    name: 'Vanuatu vatu',
    symbol: r'VT',
  );
  final Currency WST = Currency.create(
    'WST',
    2,
    name: 'Samoan Tala',
    symbol: r'WST',
  );
  final Currency XAF = Currency.create(
    'XAF',
    0,
    name: 'Central African Franc',
    symbol: r'Fr',
  );
  final Currency XCD = Currency.create(
    'XCD',
    2,
    name: 'East Caribbean Dollar',
    symbol: r'$',
  );
  final Currency XOF = Currency.create(
    'XOF',
    0,
    name: 'West African Franc',
    symbol: r'XOF',
  );
  final Currency XPF = Currency.create(
    'XPF',
    0,
    name: 'CFP Franc',
    symbol: r'Fr',
  );
  final Currency YER = Currency.create(
    'YER',
    2,
    name: 'Yemeni Rial',
    symbol: r'﷼',
  );
  final Currency ZMW = Currency.create(
    'ZMW',
    2,
    name: 'Zambian Kwacha',
    symbol: r'ZMW',
  );
  final Currency BHD = Currency.create(
    'BHD',
    3,
    name: 'Bahraini Dinar',
    symbol: r'.د.ب',
  );
  final Currency BTN = Currency.create(
    'BTN',
    2,
    name: 'Ngultrum',
    symbol: r'Nu.',
  );
  final Currency CUP = Currency.create(
    'CUP',
    2,
    name: 'Cuban Peso',
    symbol: r'$MN',
  );
  final Currency ERN = Currency.create(
    'ERN',
    2,
    name: 'Nakfa',
    symbol: r'Nkf',
  );
  final Currency IDR = Currency.create(
    'IDR',
    2,
    name: 'Rupiah',
    symbol: r'Rp',
  );
  final Currency IRR = Currency.create(
    'IRR',
    2,
    name: 'Iranian Rial',
    symbol: r'﷼',
  );
  final Currency IQD = Currency.create(
    'IQD',
    3,
    name: 'Iraqi Dinar',
    symbol: r'د.ع',
  );
  final Currency JOD = Currency.create(
    'JOD',
    3,
    name: 'Jordanian Dinar',
    symbol: r'د.أ',
  );
  final Currency KPW = Currency.create(
    'KPW',
    2,
    name: 'North Korean Won',
    symbol: r'₩',
  );
  final Currency KWD = Currency.create(
    'KWD',
    3,
    name: 'Kuwaiti Dinar',
    symbol: r'د.ك',
  );
  final Currency LYD = Currency.create(
    'LYD',
    3,
    name: 'Libyan Dinar',
    symbol: r'ل.د',
  );
  final Currency OMR = Currency.create(
    'OMR',
    3,
    name: 'Rial Omani',
    symbol: r'ر.ع.',
  );
  final Currency SHP = Currency.create(
    'SHP',
    2,
    name: 'Saint Helena Pound',
    symbol: r'£',
  );
  final Currency SSP = Currency.create(
    'SSP',
    2,
    name: 'South Sudanese Pound',
    symbol: r'SS£',
  );
  final Currency SYP = Currency.create(
    'SYP',
    2,
    name: 'Syrian Pound',
    symbol: r'£S',
  );
  final Currency TND = Currency.create(
    'TND',
    3,
    name: 'Tunisian Dinar',
    symbol: r'د.ت',
  );
  final Currency VES = Currency.create(
    'VES',
    2,
    name: 'Bolívar Soberano',
    symbol: r'Bs.',
  );
  final Currency MRU = Currency.create(
    'MRU',
    2,
    name: 'Ouguiya',
    symbol: r'UM',
  );
  final Currency STN = Currency.create(
    'STN',
    2,
    name: 'Dobra',
    symbol: r'Db',
  );
  final Currency CUC = Currency.create(
    'CUC',
    2,
    name: 'Peso Convertible',
    symbol: r'CUC$',
  );
  final Currency ZWL = Currency.create(
    'ZWL',
    2,
    name: 'Zimbabwe Dollar',
    symbol: r'$',
  );
  final Currency BYN = Currency.create(
    'BYN',
    2,
    name: 'Belarusian Ruble',
    symbol: r'Br',
  );
  final Currency TMT = Currency.create(
    'TMT',
    2,
    name: 'Turkmenistan New Manat',
    symbol: r'm',
  );
  final Currency SDG = Currency.create(
    'SDG',
    2,
    name: 'Sudanese Pound',
    symbol: r'ج.س',
  );

  /// Return list of all of the common currency.
  List<Currency> asList() {
    return [
      aud,
      btc,
      brl,
      gbp,
      cad,
      cny,
      czk,
      euro,
      ghs,
      inr,
      jpy,
      mxn,
      nzd,
      ngn,
      nok,
      pln,
      zar,
      krw,
      chf,
      twd,
      ltry,
      rub,
      usd,
      AED,
      AFN,
      ALL,
      AMD,
      ANG,
      AOA,
      ARS,
      AWG,
      AZN,
      BAM,
      BBD,
      BDT,
      BGN,
      BIF,
      BMD,
      BND,
      BOB,
      BSD,
      BWP,
      BZD,
      CDF,
      CLP,
      COP,
      CRC,
      CVE,
      DJF,
      DKK,
      DOP,
      DZD,
      EGP,
      ETB,
      FJD,
      FKP,
      GEL,
      GIP,
      GMD,
      GNF,
      GTQ,
      GYD,
      HKD,
      HNL,
      HRK,
      HTG,
      HUF,
      ILS,
      ISK,
      JMD,
      KES,
      KGS,
      KHR,
      KMF,
      KYD,
      KZT,
      LAK,
      LBP,
      LKR,
      LRD,
      LSL,
      MAD,
      MDL,
      MGA,
      MKD,
      MMK,
      MNT,
      MOP,
      MUR,
      MVR,
      MWK,
      MYR,
      MZN,
      NAD,
      NIO,
      NPR,
      PAB,
      PEN,
      PGK,
      PHP,
      PKR,
      PYG,
      QAR,
      RON,
      RSD,
      RWF,
      SAR,
      SBD,
      SCR,
      SEK,
      SGD,
      SLL,
      SOS,
      SRD,
      SVC,
      SZL,
      THB,
      TJS,
      TOP,
      TTD,
      TZS,
      UAH,
      UGX,
      UYU,
      UZS,
      VND,
      VUV,
      WST,
      XAF,
      XCD,
      XOF,
      XPF,
      YER,
      ZMW,
      BHD,
      BTN,
      CUP,
      ERN,
      IDR,
      IRR,
      IQD,
      JOD,
      KPW,
      KWD,
      LYD,
      OMR,
      SHP,
      SSP,
      SYP,
      TND,
      VES,
      MRU,
      STN,
      CUC,
      ZWL,
      BYN,
      TMT,
      SDG,
    ];
  }
}
