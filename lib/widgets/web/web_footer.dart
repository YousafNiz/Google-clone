import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/widgets/footer_text.dart';

class WebFooter extends StatelessWidget {
  const WebFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: footerColor,
      child: const Padding(
        padding: EdgeInsets.all(5),
        child: Row(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FooterText(title: 'About'),
                SizedBox(
                  width: 10,
                ),
                FooterText(title: 'Advertising'),
                SizedBox(
                  width: 10,
                ),
                FooterText(title: 'Busniness'),
                SizedBox(
                  width: 10,
                ),
                FooterText(title: 'How Search Work'),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              FooterText(title: 'Privacy'),
              SizedBox(
                width: 10,
              ),
              FooterText(title: 'Term'),
              SizedBox(
                width: 10,
              ),
              FooterText(title: 'Setting'),
              SizedBox(
                width: 10,
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
