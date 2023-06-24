import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflixclone/core/constants.dart';
import 'package:netflixclone/presentation/search/widgets/search_idle.dart';
import 'package:netflixclone/presentation/search/widgets/search_results.dart';

bool _press = true;

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CupertinoSearchTextField(
              backgroundColor: Colors.grey.withOpacity(0.4),
              prefixIcon: IconButton(
                icon: const Icon(CupertinoIcons.search),
                color: Colors.grey,
                onPressed: () {
                  _press = !_press;
                },
              ),
              suffixIcon: const Icon(
                CupertinoIcons.xmark_circle_fill,
                color: Colors.grey,
              ),
              style: const TextStyle(color: Colors.white),
            ),
            kHeight,
            _press
                ? const Expanded(
                    child: SearchIdleWidget(),
                  )
                : const Expanded(
                    child: SearchResultWidget(),
                  ),
          ],
        ),
      )),
    );
  }
}
