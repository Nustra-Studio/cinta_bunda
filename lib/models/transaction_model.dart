class TransactionData {
  final String pesan;
  final List<ListTransaksi> transaksi;

  const TransactionData({this.transaksi, this.pesan});

  factory TransactionData.fromJson(Map<String, dynamic> json) {
    return TransactionData(
        pesan: json['message'],
        transaksi: List<ListTransaksi>.from(
            json['data'].map((value) => ListTransaksi.fromJson(value)) ?? []));
  }
}

class ListTransaksi {
  final String namaBarang;
  final String harga;
  final String tanggal;

  const ListTransaksi({this.namaBarang, this.harga, this.tanggal});

  factory ListTransaksi.fromJson(Map<String, dynamic> json) {
    return ListTransaksi(
        namaBarang: json['nama_barang'] ?? '',
        harga: json['harga'] ?? '',
        tanggal: json['created_at'] ?? '');
  }
  @override
  String toString() =>
      'TransactionData(namaBarang: $namaBarang,harga: $harga, tanggal: $tanggal )';
}
