// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflixclone/presentation/main_page/screen_main_page.dart';
import 'package:tmdb_api/tmdb_api.dart';

import 'core/colors.dart';

List trendingmovies = [];
List releasedinpastyearmovies = [];
List latestmovies = [];
List southmovies = [];
List top10tvshows = [];
String movietitle = '';
String releasedate = '';
bool isLoading = true; // Initialize loading state to true

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final String apikey = "3f8dd9ef3edb774f2e891b7f7bc59e57";
  final String readaccesstoken =
      "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIzZjhkZDllZjNlZGI3NzRmMmU4OTFiN2Y3YmM1OWU1NyIsInN1YiI6IjY0OTk4YjI4ZWI3OWMyMDBlMjlmZDliOSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.Wje8D_DnWk1s1s_vxA4hgU9paaut5-aSUysZaycdAbk";
  @override
  void initState() {
    initialise();
    super.initState();
  }

  initialise() async {
    await loadmovies();
  }

  loadmovies() async {
    setState(() {
      isLoading = true; // Set loading state to true before fetching
    });

    TMDB tmdbwithCustomLogs = TMDB(ApiKeys(apikey, readaccesstoken));
    const ConfigLogger(
      showLogs: true,
      showErrorLogs: true,
    );
    Map trendingresult = await tmdbwithCustomLogs.v3.trending.getTrending();
    Map releasedinpastyearresult =
        await tmdbwithCustomLogs.v3.movies.getPopular();
    // Map latestresult = await tmdbwithCustomLogs.v3.movies.getTopRated();
    Map latestresult = await tmdbwithCustomLogs.v3.movies.getUpcoming();
    Map southresult = await tmdbwithCustomLogs.v3.tv.getPopular();
    Map top10tvresult = await tmdbwithCustomLogs.v3.tv.getTopRated();
    setState(() {
      isLoading = false; // Set loading state to false after fetching
      trendingmovies = trendingresult['results'];
      releasedinpastyearmovies = releasedinpastyearresult['results'];
      latestmovies = latestresult['results'];
      southmovies = southresult['results'];
      top10tvshows = top10tvresult['results'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Netflix',
      theme: ThemeData(
          appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
              .copyWith(background: Colors.black),
          scaffoldBackgroundColor: backgroundColor,
          fontFamily: GoogleFonts.montserrat().fontFamily,
          textTheme: const TextTheme(
            bodyText1: TextStyle(color: Colors.white),
            bodyText2: TextStyle(color: Colors.white),
          )),
      home: ScreenMainPage(),
    );
  }
}
