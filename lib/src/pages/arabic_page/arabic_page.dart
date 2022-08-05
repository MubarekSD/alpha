import 'package:flutter/material.dart';
import '../../datas/datas.dart';
import '../../widgets/widgets.dart';

class ArabicPage extends StatelessWidget {
  const ArabicPage({
    super.key,
  });

  static const String routeName = '/arabic_page';

  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('عربى'),
      ),
      body: GridView.builder(
        itemCount: arabicCategories.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
        ),
        itemBuilder: (final BuildContext context, final int index) {
          return CategoryWidget(
            id: arabicCategories[index].id,
            image: arabicCategories[index].image,
            name: arabicCategories[index].name,
            load: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (final BuildContext context) => arabicCategories[index].page,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
