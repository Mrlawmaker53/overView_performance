class ResponseModel1 {
  int? iD;
  String? security;
  int? industryID;
  String? industry;
  int? sectorID;
  String? sector;
  double? mCAP;
  String? eV;
  dynamic eVDateEnd;
  double? bookNavPerShare;
  double? tTMPE;
  int? tTMYearEnd;
  double? yieldb;
  int? yearEnd;
  String? sectorSlug;
  String? industrySlug;
  String? securitySlug;
  double? pEGRatio;

  ResponseModel1(
      {iD,
      security,
      industryID,
      industry,
      sectorID,
      sector,
      mCAP,
      eV,
      eVDateEnd,
      bookNavPerShare,
      tTMPE,
      tTMYearEnd,
      yieldb,
      yearEnd,
      sectorSlug,
      industrySlug,
      securitySlug,
      pEGRatio});

  ResponseModel1.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    security = json['Security'];
    industryID = json['IndustryID'];
    industry = json['Industry'];
    sectorID = json['SectorID'];
    sector = json['Sector'];
    mCAP = json['MCAP'];
    eV = json['EV'];
    eVDateEnd = json['EVDateEnd'];
    bookNavPerShare = json['BookNavPerShare'];
    tTMPE = json['TTMPE'];
    tTMYearEnd = json['TTMYearEnd'];
    yieldb = json['Yield'];
    yearEnd = json['YearEnd'];
    sectorSlug = json['SectorSlug'];
    industrySlug = json['IndustrySlug'];
    securitySlug = json['SecuritySlug'];
    pEGRatio = json['PEGRatio'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['ID'] = iD;
    data['Security'] = security;
    data['IndustryID'] = industryID;
    data['Industry'] = industry;
    data['SectorID'] = sectorID;
    data['Sector'] = sector;
    data['MCAP'] = mCAP;
    data['EV'] = eV;
    data['EVDateEnd'] = eVDateEnd;
    data['BookNavPerShare'] = bookNavPerShare;
    data['TTMPE'] = tTMPE;
    data['TTMYearEnd'] = tTMYearEnd;
    data['Yield'] = yieldb;
    data['YearEnd'] = yearEnd;
    data['SectorSlug'] = sectorSlug;
    data['IndustrySlug'] = industrySlug;
    data['SecuritySlug'] = securitySlug;
    data['PEGRatio'] = pEGRatio;
    return data;
  }
}
