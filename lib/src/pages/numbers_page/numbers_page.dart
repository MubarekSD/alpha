import 'package:alpha/src/widgets/slide_widget.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../models/models.dart';
import 'package:audioplayers/audioplayers.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({
    required this.numbers,
    super.key,
  });

  static const String routeName = '/numbers_page';

  final List<Number> numbers;

  @override
  Widget build(final BuildContext context) {
    Size screenSize = MediaQuery.maybeOf(context)!.size;
    double height = screenSize.height / 1.3;

    final AudioPlayer player = AudioPlayer();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Numbers'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget> [
          CarouselSlider.builder(
            itemCount: numbers.length,
            options: CarouselOptions(
              autoPlay: false,
              enlargeCenterPage: true,
              reverse: false,
              height: height,
              initialPage: 0,
              scrollDirection: Axis.horizontal,
            ),
            itemBuilder: (final BuildContext context, final int index, final int realIndex) {
              return SlideWidget(
                num: numbers[index].num,
                name: numbers[index].name,
                play: () async {
                  await player.play(
                    AssetSource(numbers[index].sound),
                  ); // will immediately start playing
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
