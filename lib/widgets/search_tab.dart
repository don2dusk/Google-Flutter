import 'package:flutter/material.dart';
import 'package:google_flutter/colors.dart';

class SearchTab extends StatelessWidget {
  final bool isActive;
  final IconData icon;
  final String text;
  const SearchTab({
    super.key,
    this.isActive = false,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            size.width > 768
                ? Icon(
                    icon,
                    size: 18,
                    color: isActive ? blue : Colors.grey,
                  )
                : Container(),
            const SizedBox(width: 3),
            Text(
              text,
              style: TextStyle(
                fontSize: 15,
                color: isActive ? blue : Colors.grey,
              ),
            ),
          ],
        ),
        const SizedBox(height: 7),
        isActive
            ? Container(
                height: 3,
                width: 40,
                color: blue,
              )
            : Container(height: 3),
      ],
    );
  }
}
