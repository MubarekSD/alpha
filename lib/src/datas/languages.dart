import '../models/models.dart';
import '../pages/pages.dart';

List<Language> list = <Language>[
  Language(id: 0, alphabet: 'A', name: 'English', page: EnglishPage.routeName),
  Language(id: 1, alphabet: 'l', name: 'عربى', page: ArabicPage.routeName),
  // Language(id: 2, alphabet: 'ሀ', name: 'ትግርኛ', page: ArabicPage.routeName),
  Language(id: 3, alphabet: 'ሃ', name: 'አማርኛ', page: AmharicPage.routeName),
];
