import 'dart:convert';

UserModel userResponseJson(String str) =>
    UserModel.fromJson(json.decode(str));

class UserModel {
  String? status;
  String? token;
  User? user;

  UserModel({this.status, this.token, this.user});

  UserModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    token = json['token'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['token'] = this.token;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}

class User {
  String? name;
  String? email;
  String? regNo;
  int? phoneNo;
  String? username;
  String? passwordChangedAt;
  bool? admin;
  bool? active;
  String? sId;
  int? iV;
  String? id;

  User(
      {this.name,
        this.email,
        this.regNo,
        this.phoneNo,
        this.username,
        this.passwordChangedAt,
        this.admin,
        this.active,
        this.sId,
        this.iV,
        this.id});

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    regNo = json['regNo'];
    phoneNo = json['phoneNo'];
    username = json['username'];
    passwordChangedAt = json['passwordChangedAt'];
    admin = json['admin'];
    active = json['active'];
    sId = json['_id'];
    iV = json['__v'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['email'] = this.email;
    data['regNo'] = this.regNo;
    data['phoneNo'] = this.phoneNo;
    data['username'] = this.username;
    data['passwordChangedAt'] = this.passwordChangedAt;
    data['admin'] = this.admin;
    data['active'] = this.active;
    data['_id'] = this.sId;
    data['__v'] = this.iV;
    data['id'] = this.id;
    return data;
  }
}
