import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflixclone/core/constants.dart';
import 'package:netflixclone/main.dart';
import 'package:netflixclone/presentation/home/background_card.dart';
import 'package:netflixclone/presentation/home/number_title_card.dart';
import '../widgets/main_title_card.dart';

ValueNotifier<bool> scrollnotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollnotifier,
        builder: (BuildContext context, index, _) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              if (direction == ScrollDirection.reverse) {
                scrollnotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollnotifier.value = true;
              }
              return true;
            },
            child: Stack(
              children: [
                ListView(
                  children: [
                    const BackgroundCard(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MainTitleCard(
                        title: 'Released in the past year',
                        array: releasedinpastyearmovies,
                      ),
                    ),
                    kHeight,
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MainTitleCard(
                        title: 'Trending Now',
                        array: trendingmovies,
                      ),
                    ),
                    kHeight,
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: NumberTitleCard(
                        array: top10tvshows,
                      ),
                    ),
                    kHeight,
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MainTitleCard(
                        title: 'Tens Dramas',
                        array: latestmovies,
                      ),
                    ),
                    kHeight,
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MainTitleCard(
                        title: 'South Indian Cinema',
                        array: southmovies,
                      ),
                    ),
                    kHeight,
                  ],
                ),
                scrollnotifier.value
                    ? Container(
                        width: double.infinity,
                        height: 90,
                        color: Colors.black.withOpacity(0.2),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.network(
                                  'https://www.edigitalagency.com.au/wp-content/uploads/Netflix-N-Symbol-logo-red-transparent-RGB-png.png',
                                  width: 70,
                                  height: 70,
                                ),
                                const Spacer(),
                                const Icon(
                                  Icons.cast,
                                  color: Colors.white,
                                ),
                                kWidth,
                                Container(
                                  width: 25,
                                  height: 25,
                                  color:
                                      const Color.fromARGB(221, 152, 217, 243),
                                ),
                                kWidth,
                              ],
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'TV Shows',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Movies',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Categories',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    : kHeight
              ],
            ),
          );
        },
      ),
    );
  }
}
