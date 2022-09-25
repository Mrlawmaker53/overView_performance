import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../utils/utils.dart';

Widget subLayoutOverView(
  String title,
  String subTitle,
  bool flag,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: kTitleTextStyle),
        Row(
          children: [
            flag ? IconsDicussOver('Industry') : const SizedBox(),
            const SizedBox(
              width: 1,
            ),
            Text(
              subTitle,
              style: kOverViewSubTitle,
            ),
          ],
        )
      ],
    ),
  );
}

Widget IconsDicussOver(String label) {
  if (label.startsWith('I')) {
    return Icon(Icons.account_balance, color: Colors.brown);
  } else {
    return Icon(Icons.home, color: Colors.brown);
  }
}
