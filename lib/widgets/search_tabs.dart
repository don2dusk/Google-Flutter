import 'package:flutter/material.dart';
import 'package:google_flutter/widgets/widgets.dart';

class SearchTabs extends StatelessWidget {
  const SearchTabs({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.width > 768 ? 55 : 30,
      child: CustomScrollView(scrollDirection: Axis.horizontal, slivers: [
        SliverToBoxAdapter(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              SearchTab(isActive: true, icon: Icons.search, text: 'All'),
              SizedBox(width: 20),
              SearchTab(isActive: false, icon: Icons.image, text: 'Images'),
              SizedBox(width: 20),
              SearchTab(isActive: false, icon: Icons.map, text: 'Maps'),
              SizedBox(width: 20),
              SearchTab(isActive: false, icon: Icons.article, text: 'News'),
              SizedBox(width: 20),
              SearchTab(isActive: false, icon: Icons.shop, text: 'Shopping'),
              SizedBox(width: 20),
              SearchTab(isActive: false, icon: Icons.more_vert, text: 'More'),
              SizedBox(width: 20),
            ],
          ),
        ),
      ]),
    );
  }
}
