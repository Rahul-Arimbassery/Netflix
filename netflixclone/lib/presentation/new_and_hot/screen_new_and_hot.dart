import 'package:flutter/material.dart';
import 'package:netflixclone/core/colors.dart';
import 'package:netflixclone/core/constants.dart';
import 'package:netflixclone/presentation/new_and_hot/widgets/comming_soon.dart';
import 'package:netflixclone/presentation/widgets/every_one_watching.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(
            80,
          ),
          child: AppBar(
            title: const Text(
              'New & Hot',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w900,
              ),
            ),
            actions: [
              const Icon(
                Icons.cast,
                color: Colors.white,
              ),
              kWidth,
              Container(
                width: 20,
                height: 20,
                color: Colors.blue,
              ),
              kWidth,
            ],
            bottom: TabBar(
              labelColor: kBlackColor,
              unselectedLabelColor: kWhite,
              //isScrollable: true,
              labelStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              indicator: BoxDecoration(color: kWhite, borderRadius: kRadius30),
              tabs: const [
                Tab(
                  text: "🍿 Coming Soon",
                ),
                Tab(
                  text: "👀 Everyone's Watching",
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(children: [
          _buildCommingSoon(),
          _buildEveryOnesWidget(),
        ]),
      ),
    );
  }

  _buildCommingSoon() {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, index) => CommingSoonWidget(
          index: index,
        ),
      ),
    );
  }

  _buildEveryOnesWidget() {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, index) => EveryOneWatchingWidget(
          index: index,
        ),
      ),
    );
  }
}
