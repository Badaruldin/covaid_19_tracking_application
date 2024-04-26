import 'dart:convert';
import 'package:covaid_19_tracking_app/Functionality/apiUrlClass.dart';
import 'package:covaid_19_tracking_app/Model/CovaidAllStatesModel.dart';
import 'package:covaid_19_tracking_app/Model/CovaidCountriesModel.dart';
import 'package:http/http.dart' as http;

class ApiFunctionalityClass {
  Future<CovaidAllStatesModel> fetchCovaidStatesData() async {
    var response = await http.get(Uri.parse(ApiUrlClass.allList));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      print('reached at if block at Future fun');
      return CovaidAllStatesModel.fromJson(data);
    } else {
      print('some error at Future fun');
      return throw Exception('something went wrong');
    }
  }

  Future<List<CovaidCountriesModel>> fetchCountriesData() async {
    List<CovaidCountriesModel> countriesCountryList = [];
    final response = await http.get(Uri.parse(ApiUrlClass.countriesList));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body.toString());
      CovaidCountriesModel.fromJson(data);
      for (Map<String, dynamic> i in data) {
        countriesCountryList.add(CovaidCountriesModel.fromJson(i));
      }
      return countriesCountryList;
    } else {
      throw Exception(response.statusCode.toString());
    }
  }

  Future<List<dynamic>> countriesListApi() async {
    var data;
    final response = await http.get(Uri.parse(ApiUrlClass.countriesList));
    print(response.statusCode.toString());
    print(data);
    if (response.statusCode == 200) {
      data = jsonDecode(response.body.toString());
      return data;
    } else {
      throw Exception('Error');
    }
  }
}
