import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class ExpensesServices {
  dynamic id;
  dynamic mes;
  dynamic qtdMensal;

  ExpensesServices({this.id, this.mes, this.qtdMensal});

  factory ExpensesServices.fromJson(Map<String, dynamic> json) {
    return ExpensesServices(
      id: json['id'] as int,
      mes: json['mes'] as String,
      qtdMensal: json['qtd_mensal'] as double,
    );
  }

  static const baseUrl = "http://10.0.2.2:8090";

  static Future<List<ExpensesServices>> getExpenses() async {
    try {
      var url = baseUrl + "/gasto";
      final response =
          await http.get(url, headers: {"Content-Type": "application/json"});
      if (200 == response.statusCode) {
        List<ExpensesServices> list = parseResponse(response.body);
        return list;
      } else {
        return List<ExpensesServices>();
      }
    } catch (e) {
      return List<ExpensesServices>();
    }
  }

  static Future<dynamic> deleteExpenses(String id) async {
    try {
      var url = baseUrl + "/gasto/deletar/$id";
      final response =
          await http.delete(url, headers: {"Content-Type": "application/json"});
      if (200 == response.statusCode) {
        return response.statusCode;
      } else {
        return 'error';
      }
    } catch (e) {
      return 'error';
    }
  }



  static Future<dynamic> updateExpenses(String id,
      String mes, String qtdMensal) async {
    Map<String, dynamic> params = Map<String, dynamic>();

    params["id"] = id;
    params["mes"] = mes;
    params["qtd_mensal"] = qtdMensal;

    var body = json.encode(params);

    var response = await http.put("http://10.0.2.2:8090/gasto/editar",
        headers: {"Content-Type": "application/json"}, body: body);
    if (response.statusCode == 200) {
      return response.statusCode;
    } else {
      return response.statusCode;
    }
  }

  static List<ExpensesServices> parseResponse(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed
        .map<ExpensesServices>((json) => ExpensesServices.fromJson(json))
        .toList();
  }
}
