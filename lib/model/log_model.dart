import 'dart:convert';

LogModel logModelFromJson(String str) => LogModel.fromJson(json.decode(str));

String logModelToJson(LogModel data) => json.encode(data.toJson());

class LogModel {
  LogModel({
    this.message,
    this.token,
  });

  String message;
  String token;

  factory LogModel.fromJson(Map<String, dynamic> json) => LogModel(
        message: json["message"] == null ? null : json["message"],
        token: json["token"] == null ? null : json["token"],
      );

  Map<String, dynamic> toJson() => {
        "message": message == null ? null : message,
        "token": token == null ? null : token,
      };
}
