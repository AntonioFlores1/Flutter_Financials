// To parse this JSON data, do
//
//     final userContent = userContentFromJson(jsonString);

import 'dart:convert';

UserContent userContentFromJson(String str) => UserContent.fromJson(json.decode(str));

String userContentToJson(UserContent data) => json.encode(data.toJson());

class UserContent {
  UserContent({
    this.account,
  });

  List<Account> account;

  factory UserContent.fromJson(Map<String, dynamic> json) => UserContent(
    account: List<Account>.from(json["account"].map((x) => Account.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "account": List<dynamic>.from(account.map((x) => x.toJson())),
  };
}

class Account {
  Account({
    this.container,
    this.providerAccountId,
    this.accountName,
    this.accountStatus,
    this.accountNumber,
    this.aggregationSource,
    this.isAsset,
    this.balance,
    this.id,
    this.includeInNetWorth,
    this.providerId,
    this.providerName,
    this.isManual,
    this.accountType,
    this.createdDate,
    this.apr,
    this.cashApr,
    this.availableCash,
    this.availableCredit,
    this.lastPaymentAmount,
    this.lastPaymentDate,
    this.lastUpdated,
    this.runningBalance,
    this.totalCashLimit,
    this.totalCreditLine,
    this.dataset,
    this.availableBalance,
    this.currentBalance,
    this.displayedName,
    this.classification,
  });

  String container;
  int providerAccountId;
  String accountName;
  String accountStatus;
  String accountNumber;
  String aggregationSource;
  bool isAsset;
  Balance balance;
  int id;
  bool includeInNetWorth;
  String providerId;
  String providerName;
  bool isManual;
  String accountType;
  DateTime createdDate;
  double apr;
  double cashApr;
  Balance availableCash;
  Balance availableCredit;
  Balance lastPaymentAmount;
  DateTime lastPaymentDate;
  DateTime lastUpdated;
  Balance runningBalance;
  Balance totalCashLimit;
  Balance totalCreditLine;
  List<Dataset> dataset;
  Balance availableBalance;
  Balance currentBalance;
  String displayedName;
  String classification;

  factory Account.fromJson(Map<String, dynamic> json) => Account(
    container: json["CONTAINER"],
    providerAccountId: json["providerAccountId"],
    accountName: json["accountName"],
    accountStatus: json["accountStatus"],
    accountNumber: json["accountNumber"],
    aggregationSource: json["aggregationSource"],
    isAsset: json["isAsset"],
    balance: Balance.fromJson(json["balance"]),
    id: json["id"],
    includeInNetWorth: json["includeInNetWorth"],
    providerId: json["providerId"],
    providerName: json["providerName"],
    isManual: json["isManual"],
    accountType: json["accountType"],
    createdDate: DateTime.parse(json["createdDate"]),
    apr: json["apr"] == null ? null : json["apr"].toDouble(),
    cashApr: json["cashApr"] == null ? null : json["cashApr"].toDouble(),
    availableCash: json["availableCash"] == null ? null : Balance.fromJson(json["availableCash"]),
    availableCredit: json["availableCredit"] == null ? null : Balance.fromJson(json["availableCredit"]),
    lastPaymentAmount: json["lastPaymentAmount"] == null ? null : Balance.fromJson(json["lastPaymentAmount"]),
    lastPaymentDate: json["lastPaymentDate"] == null ? null : DateTime.parse(json["lastPaymentDate"]),
    lastUpdated: DateTime.parse(json["lastUpdated"]),
    runningBalance: json["runningBalance"] == null ? null : Balance.fromJson(json["runningBalance"]),
    totalCashLimit: json["totalCashLimit"] == null ? null : Balance.fromJson(json["totalCashLimit"]),
    totalCreditLine: json["totalCreditLine"] == null ? null : Balance.fromJson(json["totalCreditLine"]),
    dataset: List<Dataset>.from(json["dataset"].map((x) => Dataset.fromJson(x))),
    availableBalance: json["availableBalance"] == null ? null : Balance.fromJson(json["availableBalance"]),
    currentBalance: json["currentBalance"] == null ? null : Balance.fromJson(json["currentBalance"]),
    displayedName: json["displayedName"] == null ? null : json["displayedName"],
    classification: json["classification"] == null ? null : json["classification"],
  );

  Map<String, dynamic> toJson() => {
    "CONTAINER": container,
    "providerAccountId": providerAccountId,
    "accountName": accountName,
    "accountStatus": accountStatus,
    "accountNumber": accountNumber,
    "aggregationSource": aggregationSource,
    "isAsset": isAsset,
    "balance": balance.toJson(),
    "id": id,
    "includeInNetWorth": includeInNetWorth,
    "providerId": providerId,
    "providerName": providerName,
    "isManual": isManual,
    "accountType": accountType,
    "createdDate": createdDate.toIso8601String(),
    "apr": apr == null ? null : apr,
    "cashApr": cashApr == null ? null : cashApr,
    "availableCash": availableCash == null ? null : availableCash.toJson(),
    "availableCredit": availableCredit == null ? null : availableCredit.toJson(),
    "lastPaymentAmount": lastPaymentAmount == null ? null : lastPaymentAmount.toJson(),
    "lastPaymentDate": lastPaymentDate == null ? null : "${lastPaymentDate.year.toString().padLeft(4, '0')}-${lastPaymentDate.month.toString().padLeft(2, '0')}-${lastPaymentDate.day.toString().padLeft(2, '0')}",
    "lastUpdated": lastUpdated.toIso8601String(),
    "runningBalance": runningBalance == null ? null : runningBalance.toJson(),
    "totalCashLimit": totalCashLimit == null ? null : totalCashLimit.toJson(),
    "totalCreditLine": totalCreditLine == null ? null : totalCreditLine.toJson(),
    "dataset": List<dynamic>.from(dataset.map((x) => x.toJson())),
    "availableBalance": availableBalance == null ? null : availableBalance.toJson(),
    "currentBalance": currentBalance == null ? null : currentBalance.toJson(),
    "displayedName": displayedName == null ? null : displayedName,
    "classification": classification == null ? null : classification,
  };
}

class Balance {
  Balance({
    this.currency,
    this.amount,
  });

  Currency currency;
  double amount;

  factory Balance.fromJson(Map<String, dynamic> json) => Balance(
    currency: currencyValues.map[json["currency"]],
    amount: json["amount"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "currency": currencyValues.reverse[currency],
    "amount": amount,
  };
}

enum Currency { USD }

final currencyValues = EnumValues({
  "USD": Currency.USD
});

class Dataset {
  Dataset({
    this.name,
    this.additionalStatus,
    this.updateEligibility,
    this.lastUpdated,
    this.lastUpdateAttempt,
    this.nextUpdateScheduled,
  });

  String name;
  String additionalStatus;
  String updateEligibility;
  DateTime lastUpdated;
  DateTime lastUpdateAttempt;
  DateTime nextUpdateScheduled;

  factory Dataset.fromJson(Map<String, dynamic> json) => Dataset(
    name: json["name"],
    additionalStatus: json["additionalStatus"],
    updateEligibility: json["updateEligibility"],
    lastUpdated: DateTime.parse(json["lastUpdated"]),
    lastUpdateAttempt: DateTime.parse(json["lastUpdateAttempt"]),
    nextUpdateScheduled: DateTime.parse(json["nextUpdateScheduled"]),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "additionalStatus": additionalStatus,
    "updateEligibility": updateEligibility,
    "lastUpdated": lastUpdated.toIso8601String(),
    "lastUpdateAttempt": lastUpdateAttempt.toIso8601String(),
    "nextUpdateScheduled": nextUpdateScheduled.toIso8601String(),
  };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
