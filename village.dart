class village {
  int? villageCode;
  String? villageNameEnglish;
  String? villageNameLocal;
  int? subDistrictCode;
  int? stateCode;
  String? census2011Code;
  String? effectiveDate;
  String? lastUpdated;
  int? majorVersion;
  int? minorVersion;
  int? transactionId;
  int? operationCode;
  String? transactionDescription;
  bool? isactive;
  String? villageStatus;
  String? isPesa;

  village(
      {this.villageCode,
       this.villageNameEnglish,
        this.villageNameLocal,
        this.subDistrictCode,
        this.stateCode,
        this.census2011Code,
        this.effectiveDate,
        this.lastUpdated,
        this.majorVersion,
        this.minorVersion,
        this.transactionId,
        this.operationCode,
        this.transactionDescription,
        this.isactive,
        this.villageStatus,
        this.isPesa
  });

  village.fromJson(Map<String, dynamic> json) {
    villageCode = json['villageCode'];
   villageNameEnglish = json['villageNameEnglish'];
    villageNameLocal = json['villageNameLocal'];
    subDistrictCode = json['subDistrictCode'];
    stateCode = json['stateCode'];
    census2011Code = json['census2011Code'];
    effectiveDate = json['effectiveDate'];
    lastUpdated = json['lastUpdated'];
    majorVersion = json['majorVersion'];
    minorVersion = json['minorVersion'];
    transactionId = json['transactionId'];
    operationCode = json['operationCode'];
    transactionDescription = json['transactionDescription'];
    isactive = json['isactive'];
    villageStatus = json['villageStatus'];
    isPesa = json['is_pesa'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['villageCode'] = this.villageCode;
    data['villageNameEnglish'] = this.villageNameEnglish;
    data['villageNameLocal'] = this.villageNameLocal;
    data['subDistrictCode'] = this.subDistrictCode;
    data['stateCode'] = this.stateCode;
    data['census2011Code'] = this.census2011Code;
    data['effectiveDate'] = this.effectiveDate;
    data['lastUpdated'] = this.lastUpdated;
    data['majorVersion'] = this.majorVersion;
    data['minorVersion'] = this.minorVersion;
    data['transactionId'] = this.transactionId;
    data['operationCode'] = this.operationCode;
    data['transactionDescription'] = this.transactionDescription;
    data['isactive'] = this.isactive;
    data['villageStatus'] = this.villageStatus;
    data['is_pesa'] = this.isPesa;
    return data;
  }
}