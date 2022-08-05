import 'package:alpha/src/datas/datas.dart';
import 'package:alpha/src/widgets/category_widget.dart';
import 'package:flutter/material.dart';

class EnglishPage extends StatelessWidget {
  const EnglishPage({
    super.key,
  });

  static const String routeName = '/english_page';

  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('English'),
      ),
      body: GridView.builder(
        itemCount: englishCategories.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
        ),
        itemBuilder: (final BuildContext context, final  int index) {
          return CategoryWidget(
            id: englishCategories[index].id,
            image: englishCategories[index].image,
            name: englishCategories[index].name,
            load: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (final BuildContext context) => englishCategories[index].page,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
