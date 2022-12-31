import 'package:flutter/material.dart';
import 'package:google_flutter/colors.dart';
import 'package:google_flutter/widgets/footer_text.dart';

class SearchFooter extends StatelessWidget {
  const SearchFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      color: footerColor,
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 50).copyWith(top: 15),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Row(children: [
                Text(
                  'Nigeria',
                  style: TextStyle(fontSize: 16, color: Colors.grey[500]),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    width: 1,
                    height: 35,
                    color: searchBorder,
                  ),
                ),
                Icon(Icons.circle, size: 15, color: Colors.grey[500]),
                const SizedBox(width: 10),
                Text(
                  'Lagos',
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                Text(' - ',
                    style: TextStyle(
                        color: Colors.grey[400],
                        fontWeight: FontWeight.bold,
                        fontSize: 16)),
                TextButton(
                  child: const Text(
                    'Based on your past activity',
                    style: TextStyle(fontSize: 16, color: blue),
                  ),
                  onPressed: () {},
                ),
                Text(
                  ' - ',
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                TextButton(
                  child: const Text(
                    'Update location',
                    style: TextStyle(fontSize: 16, color: blue),
                  ),
                  onPressed: () {},
                ),
              ]),
            ),
          ),
          const Divider(height: 0, color: searchBorder),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Row(
                children: [
                  FooterText(onPressed: () {}, text: 'Help'),
                  FooterText(onPressed: () {}, text: 'Send Feedback'),
                  FooterText(onPressed: () {}, text: 'Privacy'),
                  FooterText(onPressed: () {}, text: 'Terms'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
