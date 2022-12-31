import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_flutter/screens/screens.dart';

import '../colors.dart';

class SearchField extends StatelessWidget {
  final bool isDesktop;
  const SearchField({super.key, required this.isDesktop});

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      onSubmitted: (query) {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) =>
                SearchScreen(searchQuery: query, start: '0')));
      },
      autocorrect: true,
      style: TextStyle(
        color: primaryColor,
        fontSize: isDesktop ? 20 : 15,
      ),
      prefix: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: SvgPicture.asset(
          'assets/images/search-icon.svg',
          color: searchBorder,
        ),
      ),
      suffix: Padding(
        padding: const EdgeInsets.only(
          right: 10,
        ),
        child: SvgPicture.asset('assets/images/mic-icon.svg'),
      ),
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      decoration: BoxDecoration(
        color: searchColor,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: searchBorder,
          width: 1,
        ),
      ),
    );
  }
}
