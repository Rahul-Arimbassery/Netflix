import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflixclone/core/constants.dart';
import 'package:netflixclone/presentation/search/widgets/search_idle.dart';
import 'package:netflixclone/presentation/search/widgets/search_results.dart';

bool _press = true;

class ScreenSearch extends StatefulWidget {
  const ScreenSearch({super.key});

  @override
  State<ScreenSearch> createState() => _ScreenSearchState();
}

class _ScreenSearchState extends State<ScreenSearch> {
  

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
              onChanged: (value) => setState(() {
                _press = false;
              }),
              onSuffixTap: () => setState(() {
                _press = true;
                FocusScope.of(context).unfocus();
                FocusScope.of(context).unfocus();
              }),
              backgroundColor: Colors.grey.withOpacity(0.4),
              prefixIcon: IconButton(
                icon: const Icon(CupertinoIcons.search),
                color: Colors.grey,
                onPressed: () {},
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
