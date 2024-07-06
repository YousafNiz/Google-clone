import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class SearchResultComponent extends StatefulWidget {
  final String link;
  final String text;
  final String linkToGo;
  final String description;
  const SearchResultComponent(
      {super.key,
      required this.link,
      required this.text,
      required this.linkToGo,
      required this.description});

  @override
  State<SearchResultComponent> createState() => _SearchResultComponentState();
}

class _SearchResultComponentState extends State<SearchResultComponent> {
  bool _showUnderloine = false;
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
                _showUnderloine = hovering;
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.link,
                  style:
                      const TextStyle(fontSize: 14, color: Color(0xff202124)),
                ),
                Text(
                  widget.text,
                  style: TextStyle(
                      fontSize: 20,
                      color: blueColor,
                      decoration: _showUnderloine
                          ? TextDecoration.underline
                          : TextDecoration.none),
                ),
              ],
            ),
          ),
        ),
        Text(
          widget.description,
          style: const TextStyle(fontSize: 14, color: primaryColor),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
