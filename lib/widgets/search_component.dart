import 'package:flutter/material.dart';
import 'package:google_flutter/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class SearchComponent extends StatefulWidget {
  final String link;
  final String text;
  final String linkToGo;
  final String desc;
  const SearchComponent(
      {super.key,
      required this.link,
      required this.desc,
      required this.text,
      required this.linkToGo});

  @override
  State<SearchComponent> createState() => _SearchComponentState();
}

class _SearchComponentState extends State<SearchComponent> {
  bool _showUnderline = false;
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.link),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
              onTap: () async {
                if (await canLaunch(widget.linkToGo)) {
                  await launch(widget.linkToGo);
                }
              },
              onHover: (hovering) {
                setState(() {
                  _showUnderline = hovering;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.link,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(
                        0xFF202124,
                      ),
                    ),
                  ),
                  Text(
                    widget.text,
                    style: TextStyle(
                        fontSize: 18,
                        color: blue,
                        decoration: _showUnderline
                            ? TextDecoration.underline
                            : TextDecoration.none),
                  ),
                ],
              ),
            ),
          ),
          Text(
            widget.desc,
            style: const TextStyle(color: primaryColor, fontSize: 14),
          ),
          const SizedBox(height: 20)
        ]);
  }
}
