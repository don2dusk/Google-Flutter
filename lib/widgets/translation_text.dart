import 'package:flutter/material.dart';
import 'package:google_flutter/widgets/widgets.dart';

class TranslationText extends StatelessWidget {
  const TranslationText({super.key});

  bool isDesktop(width) {
    if (width > 768) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return isDesktop(width)
        ? Wrap(
            alignment: WrapAlignment.center,
            children: const [
              Text('Google offered in: '),
              SizedBox(width: 5),
              LanguageText(title: 'Hausa'),
              SizedBox(width: 5),
              LanguageText(title: 'Igbo'),
              SizedBox(width: 5),
              LanguageText(title: 'Èdè Yorùbá'),
              SizedBox(width: 5),
              LanguageText(title: 'Nigerian Pidgin'),
            ],
          )
        : Column(children: [
            const Text('Google offered in: '),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                LanguageText(title: 'Hausa'),
                SizedBox(width: 15),
                LanguageText(title: 'Igbo'),
                SizedBox(width: 15),
                LanguageText(title: 'Èdè Yorùbá'),
                SizedBox(width: 15),
                LanguageText(title: 'Nigerian Pidgin')
              ],
            )
          ]);
  }
}
