import 'dart:convert';
import 'package:http/http.dart' as http;

class ExpensesServices {
  dynamic id;
  dynamic mediaGasto;
  dynamic mes;
  dynamic qtdMensal;

  ExpensesServices({this.mediaGasto, this.mes, this.qtdMensal});

  ExpensesServices.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    mediaGasto = json['media_gasto'];
    mes = json['mes'];
    qtdMensal = json['qtd_mensal'];
  }

  static const baseUrl = "http://10.0.2.2:8090/";

  static Future getExpenses() async {
    var url = baseUrl + "/gasto";
    return await http.get(url);
  }

  static List<ExpensesServices> parseResponse(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed
        .map<ExpensesServices>((json) => ExpensesServices.fromJson(json))
        .toList();
  }
}
