/// message : "Koleksi found successfully"
/// data : [{"KoleksiID":2,"UserID":6,"BukuID":1,"Buku":{"BukuID":1,"Judul":"Bahasa Indonesia Kelas X","Penerbit":"Pusat Kurikulum dan Perbukuan, Balitbang, Kemendikbud","Penulis":"Suherli, Maman Suryaman, Aji Septiaji, Istiqomah","Deskripsi":"Buku pelajran bahasa indonesia untuk kelas X","Tahunterbit":"2017","Gambar":"https://static.buku.kemdikbud.go.id/content/thumbnail/Cover_Kelas_X_B_Indonesia_BS.png"}}]

class ResponseKoleksiUserid {
  ResponseKoleksiUserid({
      this.message, 
      this.data,});

  ResponseKoleksiUserid.fromJson(dynamic json) {
    message = json['message'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(DataKoleksiUserid.fromJson(v));
      });
    }
  }
  String? message;
  List<DataKoleksiUserid>? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = message;
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// KoleksiID : 2
/// UserID : 6
/// BukuID : 1
/// Buku : {"BukuID":1,"Judul":"Bahasa Indonesia Kelas X","Penerbit":"Pusat Kurikulum dan Perbukuan, Balitbang, Kemendikbud","Penulis":"Suherli, Maman Suryaman, Aji Septiaji, Istiqomah","Deskripsi":"Buku pelajran bahasa indonesia untuk kelas X","Tahunterbit":"2017","Gambar":"https://static.buku.kemdikbud.go.id/content/thumbnail/Cover_Kelas_X_B_Indonesia_BS.png"}

class DataKoleksiUserid {
  DataKoleksiUserid({
      this.koleksiID, 
      this.userID, 
      this.bukuID, 
      this.buku,});

  DataKoleksiUserid.fromJson(dynamic json) {
    koleksiID = json['KoleksiID'];
    userID = json['UserID'];
    bukuID = json['BukuID'];
    buku = json['Buku'] != null ? Buku.fromJson(json['Buku']) : null;
  }
  int? koleksiID;
  int? userID;
  int? bukuID;
  Buku? buku;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['KoleksiID'] = koleksiID;
    map['UserID'] = userID;
    map['BukuID'] = bukuID;
    if (buku != null) {
      map['Buku'] = buku?.toJson();
    }
    return map;
  }

}

/// BukuID : 1
/// Judul : "Bahasa Indonesia Kelas X"
/// Penerbit : "Pusat Kurikulum dan Perbukuan, Balitbang, Kemendikbud"
/// Penulis : "Suherli, Maman Suryaman, Aji Septiaji, Istiqomah"
/// Deskripsi : "Buku pelajran bahasa indonesia untuk kelas X"
/// Tahunterbit : "2017"
/// Gambar : "https://static.buku.kemdikbud.go.id/content/thumbnail/Cover_Kelas_X_B_Indonesia_BS.png"

class Buku {
  Buku({
      this.bukuID, 
      this.judul, 
      this.penerbit, 
      this.penulis, 
      this.deskripsi, 
      this.tahunterbit, 
      this.gambar,});

  Buku.fromJson(dynamic json) {
    bukuID = json['BukuID'];
    judul = json['Judul'];
    penerbit = json['Penerbit'];
    penulis = json['Penulis'];
    deskripsi = json['Deskripsi'];
    tahunterbit = json['Tahunterbit'];
    gambar = json['Gambar'];
  }
  int? bukuID;
  String? judul;
  String? penerbit;
  String? penulis;
  String? deskripsi;
  String? tahunterbit;
  String? gambar;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['BukuID'] = bukuID;
    map['Judul'] = judul;
    map['Penerbit'] = penerbit;
    map['Penulis'] = penulis;
    map['Deskripsi'] = deskripsi;
    map['Tahunterbit'] = tahunterbit;
    map['Gambar'] = gambar;
    return map;
  }

}