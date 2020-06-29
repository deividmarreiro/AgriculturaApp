import 'dart:convert';

import 'package:agriculturapp/helpers/login_delegate.dart';
import 'package:agriculturapp/services/expenses_services.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ExpensesScreen extends StatefulWidget {
  @override
  _ExpensesSCreenState createState() => _ExpensesSCreenState();
}

class _ExpensesSCreenState extends State<ExpensesScreen> {
  var expenses = List<ExpensesServices>();

  _getExpenses() {
    ExpensesServices.getExpenses().then((response) {
      setState(() {
        List list = [json.decode(response.body)];
        expenses =
            list.map((model) => ExpensesServices.fromJson(model)).toList();
      });
    });
  }

  _ExpensesSCreenState() {
    _getExpenses();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Gastos'),
        centerTitle: true,
      ),
      body: listaDeGastos(),
    );
  }

  listaDeGastos() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: [
            DataColumn(
              label: Text('ID'),
            ),
            DataColumn(
              label: Text('Mes'),
            ),
            DataColumn(
              label: Text('Quantidade Mensal'),
            ),
            // Lets add one more column to show a delete button
            DataColumn(
              label: Text('Media de Gasto'),
            ),
          ],
          rows: expenses
              .map(
                (expenses) => DataRow(
                  cells: [
                    DataCell(
                      Container(
                        width: 100,
                        child: Text(
                          expenses.id,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    DataCell(
                      Container(
                        width: 100,
                        child: Text(
                          expenses.mes.toUpperCase().toString(),
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    DataCell(
                      Text(
                        expenses.qtdMensal().toString(),
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    DataCell(
                      Text(
                        expenses.mediaGasto().toString(),
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
