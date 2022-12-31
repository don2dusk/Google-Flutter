import 'package:flutter/material.dart';
import 'package:google_flutter/colors.dart';
import 'package:google_flutter/widgets/widgets.dart';

class WebFooter extends StatelessWidget {
  const WebFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      color: footerColor,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                'Nigeria',
                style: TextStyle(
                  color: Color(0xff70757a),
                  fontSize: 18,
                ),
              ),
            ),
            const Divider(),
            const SizedBox(height: 10),
            const Center(
              child: Text(
                'Carbon neutral since 2007',
                style: TextStyle(color: Color(0xff70757a)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FooterText(text: 'About', onPressed: () {}),
                      const SizedBox(width: 10),
                      FooterText(text: 'Advertising', onPressed: () {}),
                      const SizedBox(width: 10),
                      FooterText(text: 'Business', onPressed: () {}),
                      const SizedBox(width: 10),
                      FooterText(text: 'How Search works', onPressed: () {}),
                      const SizedBox(width: 10),
                    ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FooterText(onPressed: () {}, text: 'Privacy'),
                    const SizedBox(width: 10),
                    FooterText(onPressed: () {}, text: 'Terms'),
                    const SizedBox(width: 10),
                    FooterText(onPressed: () {}, text: 'Settings'),
                    const SizedBox(width: 10),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
