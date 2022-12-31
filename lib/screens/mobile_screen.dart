import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_flutter/colors.dart';
import 'package:google_flutter/widgets/widgets.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: navDrawer(size),
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        title: SizedBox(
          width: size.width * 0.34,
          child: const DefaultTabController(
            length: 2,
            key: PageStorageKey('Tab Bar'),
            child: TabBar(
                labelPadding: EdgeInsets.only(bottom: 10),
                labelColor: Color(0xff1A73eb),
                unselectedLabelColor: searchBorder,
                indicatorColor: Color(0xff1A73eb),
                tabs: [
                  Text('ALL'),
                  Text('IMAGES'),
                ]),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/images/more-apps.svg',
                color: primaryColor,
              )),
          const SizedBox(width: 10),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10).copyWith(
              right: 10,
            ),
            child: MaterialButton(
              minWidth: 10,
              onPressed: () {},
              color: const Color(0xff1A73eb),
              child: const Text(
                'Sign in',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          SizedBox(
            height: 60,
            child: Image.asset(
              'assets/images/google-logo.png',
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: size.width * 0.9,
            height: 40,
            child: const SearchField(isDesktop: false),
          ),
          const SizedBox(
            height: 30,
          ),
          const TranslationText()
        ],
      ),
      bottomNavigationBar: mobileFooter(),
    );
  }

  Widget mobileFooter() {
    return Container(
      height: 150,
      decoration: const BoxDecoration(color: footerColor),
      child: Column(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 10, top: 10, bottom: 5),
              child: Text(
                'Nigeria',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ),
          const Divider(),
          SizedBox(
            height: 35,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 30,
                right: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FooterText(onPressed: () {}, text: 'Dark Theme: on'),
                  FooterText(onPressed: () {}, text: 'Settings'),
                  FooterText(onPressed: () {}, text: 'Privacy'),
                  FooterText(onPressed: () {}, text: 'Terms'),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 35,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 50,
                right: 50,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FooterText(onPressed: () {}, text: 'Advertising'),
                  FooterText(onPressed: () {}, text: 'Business'),
                  FooterText(onPressed: () {}, text: 'About'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget navDrawer(Size size) {
    return Drawer(
      width: size.width * 0.6,
    );
  }
}
