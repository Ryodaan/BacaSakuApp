
class ResponseLogin {
  String? message;
  Data? data;
  String? token;

  ResponseLogin({this.message, this.data, this.token});

  ResponseLogin.fromJson(Map<String, dynamic> json) {
    if(json["message"] is String) {
      message = json["message"];
    }
    if(json["data"] is Map) {
      data = json["data"] == null ? null : Data.fromJson(json["data"]);
    }
    if(json["token"] is String) {
      token = json["token"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["message"] = message;
    if(data != null) {
      _data["data"] = data?.toJson();
    }
    _data["token"] = token;
    return _data;
  }
}

class Data {
  int? userId;
  String? username;
  String? email;
  String? alamat;
  String? namaLengkap;
  String? role;

  Data({this.userId, this.username, this.email, this.alamat, this.namaLengkap, this.role});

  Data.fromJson(Map<String, dynamic> json) {
    if(json["UserID"] is int) {
      userId = json["UserID"];
    }
    if(json["Username"] is String) {
      username = json["Username"];
    }
    if(json["Email"] is String) {
      email = json["Email"];
    }
    if(json["Alamat"] is String) {
      alamat = json["Alamat"];
    }
    if(json["NamaLengkap"] is String) {
      namaLengkap = json["NamaLengkap"];
    }
    if(json["Role"] is String) {
      role = json["Role"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["UserID"] = userId;
    _data["Username"] = username;
    _data["Email"] = email;
    _data["Alamat"] = alamat;
    _data["NamaLengkap"] = namaLengkap;
    _data["Role"] = role;
    return _data;
  }
}