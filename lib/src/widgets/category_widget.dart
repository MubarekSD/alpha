import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    required this.id,
    required this.image,
    required this.name,
    required this.load,
    super.key,
  });

  final int id;

  final String image;

  final String name;
  final dynamic load;

  @override
  Widget build(final BuildContext context) {
    return InkWell(
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
              children: <Widget>[
                SizedBox(
                  height: 80.0,
                  width: 80.0,
                  child: Image.asset(image),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontSize: 23.0,
                      fontFamily: 'Comic-Regular',
                      fontWeight: FontWeight.w600,
                      color: Colors.brown,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
