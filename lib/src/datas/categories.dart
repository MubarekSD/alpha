import '../models/category.dart';
import '../pages/pages.dart';
import 'datas.dart';

List<Category> englishCategories = <Category>[
  Category(
    id: 0,
    image: 'assets/images/categories/number.png',
    name: 'Numbers',
    page: NumbersPage(
      numbers: englishNumbers,
    ),
  ),
  Category(
    id: 1,
    image: 'assets/images/categories/abc.png',
    name: 'Alphabets',
    page: AlphabetsPage(
      alphabets: englishAlphabets,
    ),
  ),
];

List<Category> arabicCategories = <Category>[
  Category(
    id: 0,
    image: 'assets/images/categories/number.png',
    name: 'أعداد',
    page: NumbersPage(
      numbers: arabicNumbers,
    ),
  ),
  Category(
    id: 1,
    image: 'assets/images/categories/abc.png',
    name: 'الحروف الهجائية',
    page: AlphabetsPage(
      alphabets: arabicAlphabets,
    ),
  ),
];

List<Category> amharicCategories = <Category>[
  Category(
    id: 0,
    image: 'assets/images/categories/number.png',
    name: 'ቁጥሮች',
    page: NumbersPage(
      numbers: amharicNumbers,
    ),
  ),
  Category(
    id: 1,
    image: 'assets/images/categories/abc.png',
    name: 'ፊደላት',
    page: AlphabetsPage(
      alphabets: amharicAlphabets,
    ),
  ),
];
