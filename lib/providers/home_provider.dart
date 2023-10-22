import 'dart:convert';
import 'dart:io';
import 'package:cinta_bunda/models/home_model.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:sp_util/sp_util.dart';
import 'package:cinta_bunda/apiVar.dart';

class HomeProvider {
  Future<HomeData> fetchData() async {
    try {
      var params = {
        "access_token": SpUtil.getString('token'),
        "nomor_hp": SpUtil.getString('nomor')
      };

      final uri = Uri.parse(HomeAPI);
      final newURI = uri.replace(queryParameters: params);

      final response = await http.get(newURI);

      if (response.statusCode == 200) {
        return HomeData.fromJson(jsonDecode(response.body));
      } else {
         Exception('failed to load data');
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
