import 'package:flutter/material.dart';

class LanguageWidget extends StatelessWidget {
  const LanguageWidget({
    required this.id,
    required this.alphabet,
    required this.name,
    required this.load,
    super.key,
  });

  final int id;
  final String alphabet;
  final String name;
  final dynamic load;

  @override
  Widget build(final BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: InkWell(
        onTap: load,
        borderRadius: BorderRadius.circular(15),
        child: Hero(
          tag: id,
          child: Padding(
            padding: const EdgeInsets.all(23.0),
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget> [
                  Text(
                    alphabet,
                    style: const TextStyle(
                      fontSize: 50,
                      fontFamily: 'Comic-Regular',
                    ),
                  ),
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 23.0,
                      fontFamily: 'Comic-Regular',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
