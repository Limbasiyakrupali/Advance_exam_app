import 'dart:convert';

import 'package:advance_exam_app/model/data_model.dart';
import 'package:http/http.dart' as http;

class ApiHelper {
  ApiHelper._();

  static ApiHelper apiHelper = ApiHelper._();

  Future<List?> fetchalldata() async {
    http.Response response =
        await http.get(Uri.parse("https://fakestoreapi.com/products"));

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body);
      List<DataModel?> alldata =
          data.map((e) => DataModel.frommap(data: e)).toList();

      return alldata;
    }
  }
}
