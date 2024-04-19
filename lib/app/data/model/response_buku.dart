/// message : "Buku found successfully"
/// total : 2
/// data : [{"BukuID":3,"Judul":"Ular Putih","Penerbit":"Kazumedia","Penulis":"Kazuha","Tahunterbit":"2024","Gambar":null},{"BukuID":4,"Judul":"Ular Hitam","Penerbit":"Kazumedia","Penulis":"Kazuha","Tahunterbit":"2024","Gambar":null}]

class ResponseBuku {
  ResponseBuku({
      this.message, 
      this.total, 
      this.data,});

  ResponseBuku.fromJson(dynamic json) {
    message = json['message'];
    total = json['total'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(DataBuku.fromJson(v));
      });
    }
  }
  String? message;
  num? total;
  List<DataBuku>? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = message;
    map['total'] = total;
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// BukuID : 3
/// Judul : "Ular Putih"
/// Penerbit : "Kazumedia"
/// Penulis : "Kazuha"
/// Tahunterbit : "2024"
/// Gambar : null

class DataBuku {
  DataBuku({
      this.bukuID, 
      this.judul, 
      this.penerbit, 
      this.penulis, 
      this.tahunterbit, 
      this.gambar,});

  DataBuku.fromJson(dynamic json) {
    bukuID = json['BukuID'];
    judul = json['Judul'];
    penerbit = json['Penerbit'];
    penulis = json['Penulis'];
    tahunterbit = json['Tahunterbit'];
    gambar = json['Gambar'];
  }
  num? bukuID;
  String? judul;
  String? penerbit;
  String? penulis;
  String? tahunterbit;
  dynamic gambar;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['BukuID'] = bukuID;
    map['Judul'] = judul;
    map['Penerbit'] = penerbit;
    map['Penulis'] = penulis;
    map['Tahunterbit'] = tahunterbit;
    map['Gambar'] = gambar;
    return map;
  }

}