import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_flutter/colors.dart';
import 'package:google_flutter/widgets/widgets.dart';

class WebScreen extends StatelessWidget {
  const WebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: bgColor,
          elevation: 0,
          actions: [
            TextButton(
                onPressed: () {},
                child: const Text(
                  'Gmail',
                  style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.w400,
                  ),
                )),
            const SizedBox(width: 10),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'Images',
                  style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.w400,
                  ),
                )),
            const SizedBox(width: 10),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/images/more-apps.svg',
                  color: primaryColor,
                )),
            const SizedBox(width: 10),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10).copyWith(
                right: 10,
              ),
              child: MaterialButton(
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              child: Image.asset(
                'assets/images/google-logo.png',
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: size.width * 0.6,
              height: 50,
              child: const SearchField(isDesktop: true),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                searchButtons('Google Search', () {}),
                const SizedBox(
                  width: 10,
                ),
                searchButtons('I\'m Feeling Lucky', () {})
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const TranslationText()
          ],
        ),
        bottomNavigationBar: const WebFooter());
  }
}
