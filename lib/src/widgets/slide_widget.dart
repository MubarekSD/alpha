import 'package:flutter/material.dart';

class SlideWidget extends StatelessWidget {
  const SlideWidget({
    required this.num,
    required this.name,
    required this.play,
    super.key,
  });

  final String num;
  final String name;
  final dynamic play;

  @override
  Widget build(final BuildContext context) {
    Size screenSize = MediaQuery.maybeOf(context)!.size;
    double height = screenSize.height / 1.6;
    double width = screenSize.width / 1.6;

    return InkWell(
      onTap: play,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            boxShadow: const <BoxShadow>[
              BoxShadow(
                color: Colors.black26,
                offset: Offset(2, 1),
                blurRadius: 09.0,
              )
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                child: Container(
                  height: height,
                  width: width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                num,
                                style: const TextStyle(
                                  color: Colors.brown,
                                  fontSize: 120.0,
                                  fontFamily: 'Comic-Regular',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                name,
                                style: const TextStyle(
                                  color: Colors.brown,
                                  fontSize: 80.0,
                                  fontFamily: 'Comic-Regular',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
