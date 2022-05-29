import 'package:dagnosis_and_prediction/Widget/custom_buttons.dart';
import 'package:dagnosis_and_prediction/screens/current_location.dart';
import 'package:dagnosis_and_prediction/screens/location_screen.dart';
import 'package:dagnosis_and_prediction/screens/locationtest.dart';
import 'package:dagnosis_and_prediction/screens/login_screen.dart';
import 'package:dagnosis_and_prediction/screens/users_screen.dart';
import 'package:flutter/material.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';

void main() {
  runApp(TableResualt());
}

class TableResualt extends StatefulWidget {
  @override
  _TableExample createState() => _TableExample();
}

class _TableExample extends State<TableResualt> {
  @override
  final _formkey = GlobalKey<FormState>();
  final _data = const [
    "1 long long word assdaffadfadafdafdsfasfdafdsaffdazfdasfdafdfafafdfadfafds",
    "2 long long word assdaffadfadafdafdsfasfdafdsaffdazfdasfdafdfafafdfadfafds",
    "3 long long word assdaffadfadafdafdsfasfdafdsaffdazfdasfdafdfafafdfadfafds",
    "4 long long word assdaffadfadafdafdsfasfdafdsaffdazfdasfdafdfafafdfadfafds",
    "5 long long word assdaffadfadafdafdsfasfdafdsaffdazfdasfdafdfafafdfadfafds",
    "6 long long word assdaffadfadafdafdsfasfdafdsaffdazfdasfdafdfafafdfadfafds",
    "7 long long word assdaffadfadafdafdsfasfdafdsaffdazfdasfdafdfafafdfadfafds",
    "8 long long word assdaffadfadafdafdsfasfdafdsaffdazfdasfdafdfafafdfadfafds",
    "9 long long word assdaffadfadafdafdsfasfdafdsaffdazfdasfdafdfafafdfadfafds",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: _createListView(Axis.vertical),
      ),
    );
  }

  Widget _createListView(Axis direction) {
    return ListView.builder(
      scrollDirection: direction,
      itemCount: _data.length,
      itemBuilder: (context, index) => Card(child: Text(_data[index])),
    );
  }
}
