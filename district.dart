class District {
  int? districtCode;
   String? districtNameEnglish;
   String? districtNameLocal;
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

  District(
      {this.districtCode,
         this.districtNameEnglish,
         this.districtNameLocal,
        this.stateCode,
        this.census2011Code,
        this.effectiveDate,
        this.lastUpdated,
        this.majorVersion,
        this.minorVersion,
        this.transactionId,
        this.operationCode,
        this.transactionDescription,
        this.isactive
      });

  District.fromJson(Map<String, dynamic> json) {
    districtCode = json['districtCode'];
     districtNameEnglish = json['districtNameEnglish'];
     districtNameLocal = json['districtNameLocal'];
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
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['districtCode'] = this.districtCode;
     data['districtNameEnglish'] = this.districtNameEnglish;
     data['districtNameLocal'] = this.districtNameLocal;
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
    return data;
  }
}