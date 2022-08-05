import 'package:audioplayers/audioplayers.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../models/models.dart';
import '../../widgets/widgets.dart';

class AlphabetsPage extends StatelessWidget {
  const AlphabetsPage({
    required this.alphabets,
    super.key,
  });

  static const String routeName = '/alphabets_page';

  final List<Alphabet> alphabets;

  @override
  Widget build(final BuildContext context) {
    Size screenSize = MediaQuery.maybeOf(context)!.size;
    double height = screenSize.height / 1.3;

    final AudioPlayer player = AudioPlayer();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Alphabets'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CarouselSlider.builder(
            itemCount: alphabets.length,
            options: CarouselOptions(
              autoPlay: false,
              enlargeCenterPage: true,
              reverse: false,
              height: height,
              initialPage: 0,
              scrollDirection: Axis.horizontal,
            ),
            itemBuilder: (final BuildContext context, final int index,
                final int realIndex) {
              return SlideWidget(
                num: alphabets[index].name,
                name: alphabets[index].name,
                play: () async {
                  await player.play(
                    AssetSource(alphabets[index].sound),
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
