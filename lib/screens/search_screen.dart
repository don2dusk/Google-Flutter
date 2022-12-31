import 'package:flutter/material.dart';
import 'package:google_flutter/colors.dart';
import 'package:google_flutter/services/api_service.dart';
import 'package:google_flutter/widgets/widgets.dart';

class SearchScreen extends StatelessWidget {
  final String searchQuery;
  final String start;
  const SearchScreen(
      {super.key, required this.searchQuery, required this.start});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SearchHeader(),
            Padding(
              padding: EdgeInsets.only(left: size.width > 768 ? 28 : 15),
              child: const SearchTabs(),
            ),
            const Divider(height: 0),
            FutureBuilder(
                future: ApiService()
                    .fetchData(queryTerm: searchQuery, start: start),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              left: size.width > 768 ? 50 : 20, top: 12),
                          child: Text(
                            'About ${snapshot.data?['searchInformation']['formattedTotalResults']} results (${snapshot.data?['searchInformation']['formattedSearchTime']} seconds)',
                            style: TextStyle(
                                fontSize: size.width > 768 ? 16 : 12,
                                color: const Color(0xFF70757a)),
                          ),
                        ),
                        ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: snapshot.data?['items'].length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.only(
                                    left: size.width > 768 ? 50 : 20,
                                    top: 10,
                                    right: size.width > 768 ? 50 : 20),
                                child: SearchComponent(
                                  desc: snapshot.data?['items'][index]
                                      ['snippet'],
                                  link: snapshot.data?['items'][index]
                                      ['formattedUrl'],
                                  text: snapshot.data?['items'][index]['title'],
                                  linkToGo: snapshot.data?['items'][index]
                                      ['link'],
                                ),
                              );
                            }),
                        SizedBox(
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextButton(
                                    onPressed: () {
                                      if (start != "0") {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SearchScreen(
                                                        searchQuery:
                                                            searchQuery,
                                                        start:
                                                            (int.parse(start) -
                                                                    10)
                                                                .toString())));
                                      }
                                    },
                                    child: const Text('< Prev',
                                        style: TextStyle(
                                            fontSize: 15, color: blue))),
                                const SizedBox(width: 30),
                                TextButton(
                                    onPressed: () {
                                      if (start != "0") {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SearchScreen(
                                                        searchQuery:
                                                            searchQuery,
                                                        start:
                                                            (int.parse(start) +
                                                                    10)
                                                                .toString())));
                                      }
                                    },
                                    child: const Text('Next >',
                                        style: TextStyle(
                                            fontSize: 15, color: blue)))
                              ],
                            )),
                        const SizedBox(height: 30),
                        const SearchFooter(),
                      ],
                    );
                  }
                  return Container();
                }),
          ],
        ),
      ),
    );
  }
}
