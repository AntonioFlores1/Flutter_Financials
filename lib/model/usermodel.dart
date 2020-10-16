import 'dart:convert';

UserToken userTokenFromJson(String str) => UserToken.fromJson(json.decode(str));

String userTokenToJson(UserToken data) => json.encode(data.toJson());

class UserToken {
  UserToken({
    this.token,
  });

  Token token;

  factory UserToken.fromJson(Map<String, dynamic> json) => UserToken(
    token: Token.fromJson(json["token"]),
  );

  Map<String, dynamic> toJson() => {
    "token": token.toJson(),
  };
}

class Token {
  Token({
    this.accessToken,
    this.issuedAt,
    this.expiresIn,
  });

  String accessToken;
  DateTime issuedAt;
  int expiresIn;

  factory Token.fromJson(Map<String, dynamic> json) => Token(
    accessToken: json["accessToken"],
    issuedAt: DateTime.parse(json["issuedAt"]),
    expiresIn: json["expiresIn"],
  );

  Map<String, dynamic> toJson() => {
    "accessToken": accessToken,
    "issuedAt": issuedAt.toIso8601String(),
    "expiresIn": expiresIn,
  };
}
