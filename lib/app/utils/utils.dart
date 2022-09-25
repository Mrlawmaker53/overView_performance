import 'package:flutter/material.dart';

const kTitleTextStyle = TextStyle(
  color: Colors.black,
  fontSize: 16,
);

const kHeadingTextStyle = TextStyle(
  fontSize: 20,
  color: Color(0xff00008B),
  fontWeight: FontWeight.bold,
);
TextStyle kSubtitle(Color custcolor) {
  // ignore: non_constant_identifier_names
  final SubTiteTextStyle = TextStyle(
    color: custcolor,
    fontSize: 12,
    overflow: TextOverflow.ellipsis,
  );
  return SubTiteTextStyle;
}

const kOverViewSubTitle = TextStyle(
  color: Colors.black,
  fontSize: 16,
);
const kViewMoreTextStyle = TextStyle(
  color: Color(0xffEAC117),
  fontSize: 16,
);
const kOverview = 'OverView';
const kPerformance = 'Performance';
const kSector = 'Sector';
const kIndustry = 'Industry';
const kMCap = 'Market Cap';
const kEv = 'EnterPrice Value(EV)';
const kBookValueShare = 'Book Value / Share';
const kPriceEranRatio = 'Price-Eran Ratio(PE)';
const kPEGRatio = 'PEG Ratio';
const kDividend = 'Dividend yield';
