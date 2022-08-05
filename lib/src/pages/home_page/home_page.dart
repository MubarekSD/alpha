import 'package:alpha/src/pages/pages.dart';
import '../../widgets/widgets.dart';
import 'package:flutter/material.dart';
import '../../datas/datas.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  static const String routeName = '/';

  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alpha'),
        actions: <Widget> [
          IconButton(
            onPressed: () => load(context, SettingsPage.routeName),
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: Center(
        child: GridView.builder(
          itemCount: list.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 4.0,
          ),
          itemBuilder: (final BuildContext context, final int index) {
            return LanguageWidget(
              id: list[index].id,
              alphabet: list[index].alphabet,
              name: list[index].name,
              load: () {
                Navigator.pushNamed(context, list[index].page);
              },
            );
          },
        ),
      ),
    );
  }

  load(final BuildContext context, final String position) {
    Navigator.pushNamed(context, position);
  }
}
