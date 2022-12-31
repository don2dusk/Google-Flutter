import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_flutter/colors.dart';
import 'package:google_flutter/screens/screens.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return size.width > 768
        ? Padding(
            padding: const EdgeInsets.only(left: 28),
            child: Padding(
              padding: const EdgeInsets.only(top: 22),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/google-logo.png',
                    height: 30,
                  ),
                  const SizedBox(width: 50),
                  SizedBox(
                    height: 45,
                    width: size.width * 0.5,
                    child: searchField(true, context),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.settings_outlined)),
                        IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              'assets/images/more-apps.svg',
                              color: primaryColor,
                            )),
                        const SizedBox(width: 10),
                        Padding(
                          padding:
                              const EdgeInsets.symmetric(vertical: 10).copyWith(
                            right: 10,
                          ),
                          child: MaterialButton(
                            minWidth: 10,
                            onPressed: () {},
                            color: const Color(0xff1A73eb),
                            child: const Text(
                              'Sign in',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        : SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15)
                    .copyWith(top: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(Icons.menu),
                        Image.asset(
                          'assets/images/google-logo.png',
                          height: 40,
                        ),
                        const Icon(
                          Icons.person_outline,
                          size: 30,
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    SizedBox(height: 45, child: searchField(false, context))
                  ],
                ),
              ),
            ),
          );
  }

  Widget searchField(bool isDesktop, context) {
    return CupertinoTextField.borderless(
      onSubmitted: (query) {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) =>
                SearchScreen(searchQuery: query, start: '0')));
      },
      padding:
          EdgeInsets.only(left: isDesktop ? 20 : 0, right: isDesktop ? 20 : 0),
      style: const TextStyle(
        color: primaryColor,
        fontSize: 15,
      ),
      prefix: isDesktop
          ? null
          : Padding(
              padding: const EdgeInsets.only(left: 5),
              child: IconButton(
                onPressed: () {},
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                icon: SvgPicture.asset(
                  'assets/images/search-icon.svg',
                  height: 35,
                  color: searchBorder,
                ),
              ),
            ),
      suffix: Row(children: [
        isDesktop
            ? Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8),
                child: VerticalDivider(color: Colors.grey[500]),
              )
            : Container(),
        SvgPicture.asset(
          'assets/images/mic-icon.svg',
          height: 25,
        ),
        const SizedBox(width: 5),
        isDesktop
            ? Padding(
                padding: const EdgeInsets.only(right: 10),
                child: IconButton(
                  onPressed: () {},
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  icon: SvgPicture.asset(
                    'assets/images/search-icon.svg',
                    height: 35,
                    color: blue,
                  ),
                ),
              )
            : Container(),
      ]),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: searchColor,
      ),
    );
  }
}
