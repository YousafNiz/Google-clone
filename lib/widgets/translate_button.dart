import 'package:flutter/material.dart';
import 'package:google_clone/widgets/language_text.dart';

class TranslateButton extends StatelessWidget {
  const TranslateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      alignment: WrapAlignment.center,
      children: [
        Text('Google offered in:'),
        SizedBox(width: 5),
        LanguageText(title: 'Engligh'),
        SizedBox(width: 5),
        LanguageText(title: 'Hindi'),
        SizedBox(width: 5),
        LanguageText(title: 'Urdu'),
        SizedBox(width: 5),
        LanguageText(title: 'French'),
        SizedBox(width: 5),
        LanguageText(title: 'Tamil'),
        SizedBox(width: 5),
        LanguageText(title: 'Spanish'),
        SizedBox(width: 5),
        LanguageText(title: 'Chiness'),
        SizedBox(width: 5),
        LanguageText(title: 'Korian'),
        SizedBox(width: 5),
        LanguageText(title: 'Japness'),
      ],
    );
  }
}