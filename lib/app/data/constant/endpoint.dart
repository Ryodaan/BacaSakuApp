class Endpoint {
  static const String baseUrlApi = "http://192.168.0.2:3000/api/";
  // static const String baseUrlApi = "https://bacasaku-api.vercel.app/api/";


  static const String register = "${baseUrlApi}user/register";

  static const String login = "${baseUrlApi}user/login";
  static const String buku = "${baseUrlApi}buku";
  static const String koleksi = "${baseUrlApi}koleksi";
  // static const String book = "${baseUrlApi}book";
  static const String pinjam = "${baseUrlApi}peminjaman";
}