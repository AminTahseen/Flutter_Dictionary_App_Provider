import 'package:flutter/material.dart';

class RecentResultItem extends StatelessWidget {
  final String recentItem;
  const RecentResultItem(this.recentItem);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(recentItem),
          ),
          IconButton(
            icon: const Icon(
              Icons.arrow_forward,
              color: Colors.grey,
              size: 20,
            ),
            // the method which is called
            // when button is pressed
            onPressed: () {},
          ),
          // SizedBox
        ],
      ),
    );
  }
}
