import 'package:dictionary_app_provider/helpers/constants.dart';
import 'package:dictionary_app_provider/helpers/utils/hex_color.dart';
import 'package:dictionary_app_provider/widgets/recent_results.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  static const routeName = '/search_screen';

  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Dictionary',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(top: 10.0),
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 3,
                              color: HexColor(mainAppColorCode),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: ElevatedButton(
                        child: Icon(
                          Icons.search,
                          size: 30,
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: HexColor(mainAppColorCode)),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Text(
                'Recent',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            RecentResults()
          ],
        ),
      ),
    );
  }
}
