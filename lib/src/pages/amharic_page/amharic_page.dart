import 'package:alpha/src/datas/datas.dart';
import 'package:alpha/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

class AmharicPage extends StatelessWidget {
  const AmharicPage({
    super.key,
  });

  static const String routeName = '/amharic_page';

  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('አማርኛ'),
      ),
      body: GridView.builder(
        itemCount: amharicCategories.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
        ),
        itemBuilder: (final BuildContext context, final int index) {
          return CategoryWidget(
            id: amharicCategories[index].id,
            image: amharicCategories[index].image,
            name: amharicCategories[index].name,
            load: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (final BuildContext context) => amharicCategories[index].page,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
