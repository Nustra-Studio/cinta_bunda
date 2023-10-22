import 'dart:convert';
import 'dart:io';
import 'package:cinta_bunda/models/transaction_model.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:sp_util/sp_util.dart';
import 'package:cinta_bunda/apiVar.dart';

class TransactionProvider {
  Future<TransactionData> fetchData(var bulan, var tahun) async {
    try {
      Map<String, dynamic> queryParams = {
        "access_token": SpUtil.getString('token'),
        "data[nomor_hp]": SpUtil.getString('nomor'),
        "data[bulan]": bulan.toString(),
        "data[tahun]": tahun.toString(),
      };

      final uri = Uri.parse(TransactionAPI);
      final newURI = uri.replace(queryParameters: queryParams);

      final response = await http.get(newURI);

      if (response.statusCode == 200) {
        return TransactionData.fromJson(jsonDecode(response.body));
      } else {
        throw Exception('failed to load data');
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
