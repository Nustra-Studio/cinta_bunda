class HomeData {
  final String phone;
  final String poin;
  final String randomKode;
  final List<Transaction> transaksi;

  const HomeData({
    this.phone,
    this.poin,
    this.randomKode,
    this.transaksi,
  });

  factory HomeData.fromJson(Map<String, dynamic> json) {
    return HomeData(
        phone: json["member"]["phone"] ?? '',
        poin: json["poin"]["poin"] ?? '0',
        randomKode: json['member']['random_kode'] ?? '',
        transaksi: List<Transaction>.from(
            json['transaction'].map((value) => Transaction.fromJson(value)) ??
                []));
  }
}

class Transaction {
  final String namaBarang;
  final String harga;
  final String tanggal;

  const Transaction({this.namaBarang, this.harga, this.tanggal});

  factory Transaction.fromJson(Map<String, dynamic> json) {
    return Transaction(
        namaBarang: json['nama_barang'] ?? '',
        harga: json['harga'] ?? '',
        tanggal: json['created_at'] ?? '');
  }
  @override
  String toString() =>
      'Transaction(namaBarang: $namaBarang,harga: $harga, tanggal: $tanggal )';
}

// 
// {
//     "member": {
//         "id": 1,
//         "uuid": "1234567899874563210",
//         "name": "Siti Khoirulnisann",
//         "email": "sitikhoirulnisa@gmail.com",
//         "password": "$2y$10$.bbR6vQMQy9mPLIT9luikugkE9zSKIk0RPi/pS9FeL5uJ2WxLXmDS",
//         "phone": "08123456789123",
//         "kode_akses": "fYY1wfcWK1KbKVICZUnZDkHvB3dMYHDsv4M7vLrcMA97mDoVVJvmWzYlJNAN",
//         "alamat": "Jln tulungangung",
//         "status": "member",
//         "random_kode": "0748819755675574",
//         "expait_kode": "1691300798",
//         "created_at": "2023-07-12T13:41:46.000000Z",
//         "updated_at": "2023-08-06T05:36:38.000000Z"
//     },
//     "poin": {
//         "id": 1,
//         "uuid": "1234567899874563210452231",
//         "id_member": "1234567899874563210",
//         "poin": "10",
//         "status": "active",
//         "expaid": null,
//         "created_at": null,
//         "updated_at": null
//     },
//     "transaction": [
//         {
//             "id": 1,
//             "uuid": "46546313541645131",
//             "nama_barang": "Jilbab Coklat",
//             "jumlah_barang": "1",
//             "harga": "12000",
//             "id_member": "1234567899874563210",
//             "created_at": "2023-08-05T13:17:19.000000Z",
//             "updated_at": null
//         }
//     ]
// }
// 