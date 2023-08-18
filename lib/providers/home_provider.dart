import 'dart:convert';
import 'dart:io';
import 'package:cinta_bunda/models/home_model.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:sp_util/sp_util.dart';

class HomeProvider {
  Future<HomeData> fetchData() async {
    try {
      var params = {
        "access_token": SpUtil.getString('token'),
        "nomor_hp": SpUtil.getString('nomor')
      };

      final uri =
          Uri.parse("https://cloudinventory.nustrastudio.com/api/member/home");
      final newURI = uri.replace(queryParameters: params);

      final response = await http.get(newURI);

      if (response.statusCode == 200) {
        // Iterable it = jsonDecode(response.body);
        // List<HomeData> homeData = it.map((e) => HomeData.fromJson(e)).toList();
        // return homeData;
        return HomeData.fromJson(jsonDecode(response.body));
      } else {
        throw Exception('failed to load data');
      }

      // var jsonObject = json.decode(apiResult.body);
      // var userData = (jsonObject as Map<String, dynamic>);

      // return userData;
    } catch (e) {
      print(e.toString());
    }
  }
  // final data = {
  //    "access_token": SpUtil.getString('token'),
  //    "nomor_hp": SpUtil.getString('nomor')
  // };
  // final uri = Uri.http('www.example.com',  data);
  // Future<Response<dynamic>> getHomeData() async {
  //   return await get(
  //       'https://cloudinventory.nustrastudio.com/api/member/home', );
  // }
}
