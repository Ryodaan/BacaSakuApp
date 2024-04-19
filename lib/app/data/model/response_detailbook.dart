/// message : "Book found successfully"
/// data : {"BukuID":8,"Judul":"Buku PPKN","Penerbit":"Pusat Kurikulum dan Perbukuan, Balitbang, Kemendikbud","Penulis":"Yusnawan Lubis Mohamad Sodeli","Deskripsi":null,"Tahunterbit":"2017","Gambar":"https://static.buku.kemdikbud.go.id/content/thumbnail/Cover_Kelas_X_PPKn_BS.png"}

class ResponseDetailbook {
  ResponseDetailbook({
      this.message, 
      this.data,});

  ResponseDetailbook.fromJson(dynamic json) {
    message = json['message'];
    data = json['data'] != null ? DataDetail.fromJson(json['data']) : null;
  }
  String? message;
  DataDetail? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = message;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    return map;
  }

}

/// BukuID : 8
/// Judul : "Buku PPKN"
/// Penerbit : "Pusat Kurikulum dan Perbukuan, Balitbang, Kemendikbud"
/// Penulis : "Yusnawan Lubis Mohamad Sodeli"
/// Deskripsi : null
/// Tahunterbit : "2017"
/// Gambar : "https://static.buku.kemdikbud.go.id/content/thumbnail/Cover_Kelas_X_PPKn_BS.png"

class DataDetail {
  DataDetail({
      this.bukuID, 
      this.judul, 
      this.penerbit, 
      this.penulis, 
      this.deskripsi, 
      this.tahunterbit, 
      this.gambar,});

  DataDetail.fromJson(dynamic json) {
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
  dynamic deskripsi;
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