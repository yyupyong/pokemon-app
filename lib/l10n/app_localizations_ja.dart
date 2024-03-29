import 'app_localizations.dart';

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => 'ポケモン図鑑';

  @override
  String get height => 'たかさ';

  @override
  String get weight => 'おもさ';

  @override
  String get hp => 'HP';

  @override
  String get attack => 'こうげき';

  @override
  String get defence => 'しゅび';

  @override
  String get speed => 'すばやさ';

  @override
  String get special_attack => 'とくこう';

  @override
  String get special_defence => 'とくぼう';
}
