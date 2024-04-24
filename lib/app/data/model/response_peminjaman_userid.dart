/// message : "Peminjaman ditemukan"
/// total : 1
/// data : [{"PeminjamanID":3,"UserID":1,"BukuID":1,"Tanggalpeminjaman":"2024-04-24T16:03:19.654Z","Tanggalpengembalian":"2024-04-29T00:00:00.000Z","Statuspeminjaman":"dipinjam","User":{"NamaLengkap":"juldan willy","Username":"juldan","Alamat":"surakarta","Email":"julldan@gmail.com"},"Buku":{"BukuID":1,"Judul":"Bahasa Indonesia Kelas X","Penerbit":"Pusat Kurikulum dan Perbukuan, Balitbang, Kemendikbud","Penulis":"Suherli, Maman Suryaman, Aji Septiaji, Istiqomah","Deskripsi":"Buku Bahasa Indonesia Kelas X","Tahunterbit":"2017","Gambar":"https://static.buku.kemdikbud.go.id/content/thumbnail/Cover_Kelas_X_B_Indonesia_BS.png"}}]

class ResponsePeminjamanUserid {
  ResponsePeminjamanUserid({
      this.message, 
      this.total, 
      this.data,});

  ResponsePeminjamanUserid.fromJson(dynamic json) {
    message = json['message'];
    total = json['total'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
  }
  String? message;
  int? total;
  List<Data>? data;

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

/// PeminjamanID : 3
/// UserID : 1
/// BukuID : 1
/// Tanggalpeminjaman : "2024-04-24T16:03:19.654Z"
/// Tanggalpengembalian : "2024-04-29T00:00:00.000Z"
/// Statuspeminjaman : "dipinjam"
/// User : {"NamaLengkap":"juldan willy","Username":"juldan","Alamat":"surakarta","Email":"julldan@gmail.com"}
/// Buku : {"BukuID":1,"Judul":"Bahasa Indonesia Kelas X","Penerbit":"Pusat Kurikulum dan Perbukuan, Balitbang, Kemendikbud","Penulis":"Suherli, Maman Suryaman, Aji Septiaji, Istiqomah","Deskripsi":"Buku Bahasa Indonesia Kelas X","Tahunterbit":"2017","Gambar":"https://static.buku.kemdikbud.go.id/content/thumbnail/Cover_Kelas_X_B_Indonesia_BS.png"}

class Data {
  Data({
      this.peminjamanID, 
      this.userID, 
      this.bukuID, 
      this.tanggalpeminjaman, 
      this.tanggalpengembalian, 
      this.statuspeminjaman, 
      this.user, 
      this.buku,});

  Data.fromJson(dynamic json) {
    peminjamanID = json['PeminjamanID'];
    userID = json['UserID'];
    bukuID = json['BukuID'];
    tanggalpeminjaman = json['Tanggalpeminjaman'];
    tanggalpengembalian = json['Tanggalpengembalian'];
    statuspeminjaman = json['Statuspeminjaman'];
    user = json['User'] != null ? User.fromJson(json['User']) : null;
    buku = json['Buku'] != null ? Buku.fromJson(json['Buku']) : null;
  }
  int? peminjamanID;
  int? userID;
  int? bukuID;
  String? tanggalpeminjaman;
  String? tanggalpengembalian;
  String? statuspeminjaman;
  User? user;
  Buku? buku;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['PeminjamanID'] = peminjamanID;
    map['UserID'] = userID;
    map['BukuID'] = bukuID;
    map['Tanggalpeminjaman'] = tanggalpeminjaman;
    map['Tanggalpengembalian'] = tanggalpengembalian;
    map['Statuspeminjaman'] = statuspeminjaman;
    if (user != null) {
      map['User'] = user?.toJson();
    }
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
/// Deskripsi : "Buku Bahasa Indonesia Kelas X"
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

/// NamaLengkap : "juldan willy"
/// Username : "juldan"
/// Alamat : "surakarta"
/// Email : "julldan@gmail.com"

class User {
  User({
      this.namaLengkap, 
      this.username, 
      this.alamat, 
      this.email,});

  User.fromJson(dynamic json) {
    namaLengkap = json['NamaLengkap'];
    username = json['Username'];
    alamat = json['Alamat'];
    email = json['Email'];
  }
  String? namaLengkap;
  String? username;
  String? alamat;
  String? email;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['NamaLengkap'] = namaLengkap;
    map['Username'] = username;
    map['Alamat'] = alamat;
    map['Email'] = email;
    return map;
  }

}