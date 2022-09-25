import 'package:flutter/material.dart';
import 'package:flutter_rounded_progress_bar/flutter_rounded_progress_bar.dart';
import 'package:flutter_rounded_progress_bar/rounded_progress_bar_style.dart';

import '../utils/utils.dart';

Widget subLayout(
    String title, String subTitle, bool flag, Color customColor, double rate) {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: Text(
              title,
              style: kTitleTextStyle,
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                width: 100,
                decoration: const BoxDecoration(
                    //color: Colors.grey,
                    borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(0),
                )),
                child: RoundedProgressBar(
                  height: 30,
                  style: RoundedProgressBarStyle(
                      colorProgress: customColor,
                      backgroundProgress: const Color(0xffD3D3D3),
                      widthShadow: 0,
                      colorBorder: customColor),
                  percent: rate.abs(),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                flag ? iconsDicuss(rate) : const SizedBox(),
                Expanded(
                  child: Text(
                    '$subTitle%',
                    overflow: TextOverflow.visible,
                    style: kSubtitle(customColor),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

Widget iconsDicuss(double rate) {
  return Icon(
    rate.isNegative
        ? Icons.arrow_drop_down_outlined
        : Icons.arrow_drop_up_outlined,
    color: rate.isNegative ? Colors.red : Colors.green,
    size: 30,
  );
}
