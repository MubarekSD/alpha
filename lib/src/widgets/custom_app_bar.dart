import 'package:flutter/material.dart';
import '../pages/pages.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    required this.title,
    super.key,
  });

  final String title;

  @override
  Widget build(final BuildContext context) {
    return AppBar(
      title: Text(title),
      actions: <Widget>[
        IconButton(
          onPressed: () => Navigator.pushNamed(context, SettingsPage.routeName),
          icon: const Icon(Icons.settings),
        ),
      ],
    );
  }
}
