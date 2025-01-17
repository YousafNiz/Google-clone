import 'package:flutter/material.dart';
import 'package:google_clone/widgets/search_tab.dart';

class SearchTabs extends StatelessWidget {
  const SearchTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        height: 55,
        child: Row(
          children: [
            SearchTab(
              isActive: true,
              text: 'All',
              icon: Icons.search,
            ),
            SizedBox(
              width: 20,
            ),
            SearchTab(
              isActive: true,
              text: 'Images',
              icon: Icons.image,
            ),
            SizedBox(
              width: 20,
            ),
            SearchTab(
              isActive: true,
              text: 'Map',
              icon: Icons.map,
            ),
            SizedBox(
              width: 20,
            ),
            SearchTab(
              isActive: true,
              text: 'News',
              icon: Icons.article,
            ),
            SizedBox(
              width: 20,
            ),
            SearchTab(
              isActive: true,
              text: 'Shopping',
              icon: Icons.shop,
            ),
            SizedBox(
              width: 20,
            ),
            SearchTab(
              isActive: true,
              text: 'more',
              icon: Icons.more_vert,
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ));
  }
}
