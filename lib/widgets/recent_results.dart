import 'package:dictionary_app_provider/widgets/recent_result_item.dart';
import 'package:flutter/material.dart';

class RecentResults extends StatelessWidget {
  const RecentResults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView(
        children: <Widget>[
          RecentResultItem("Result 1"),
          RecentResultItem("Result 2"),
          RecentResultItem("Result 3"),
          RecentResultItem("Result 4"),
          RecentResultItem("Result 5"),
        ],
      ),
    );
  }
}
