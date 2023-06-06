import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: table_eg(),
  ));
}

class table_eg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          border: TableBorder.all(width: 2),
          columns: [
            DataColumn(label: Text('NAME',style: TextStyle(fontWeight: FontWeight.bold))),
            DataColumn(label: Text('COURSE',style: TextStyle(fontWeight: FontWeight.bold))),
            DataColumn(label: Text('ROLL NO',style: TextStyle(fontWeight: FontWeight.bold))),
            DataColumn(label: Text('PLACE',style: TextStyle(fontWeight: FontWeight.bold))),
            DataColumn(label: Text('PLACE',style: TextStyle(fontWeight: FontWeight.bold))),
            DataColumn(label: Text('PLACE',style: TextStyle(fontWeight: FontWeight.bold))),

          ],
          rows: [
            DataRow(
              cells: <DataCell>[
                DataCell(Text('Amal')),
                DataCell(Text('Flutter')),
                DataCell(Text('1')),
                DataCell(Text('Calicut')),
                DataCell(Text('Calicut')),
                DataCell(Text('Calicut')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('Anagha')),
                DataCell(Text('Flutter')),
                DataCell(Text('2')),
                DataCell(Text('Calicut')),
                DataCell(Text('Calicut')),
                DataCell(Text('Calicut')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('Rafkan Razak')),
                DataCell(Text('Flutter')),
                DataCell(Text('3')),
                DataCell(Text('Calicut')),
                DataCell(Text('Calicut')),
                DataCell(Text('Calicut')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('Sajin')),
                DataCell(Text('Flutter')),
                DataCell(Text('4')),
                DataCell(Text('Calicut')),
                DataCell(Text('Calicut')),
                DataCell(Text('Calicut')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('Sajin')),
                DataCell(Text('Flutter')),
                DataCell(Text('4')),
                DataCell(Text('Calicut')),
                DataCell(Text('Calicut')),
                DataCell(Text('Calicut')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('Sajin')),
                DataCell(Text('Flutter')),
                DataCell(Text('4')),
                DataCell(Text('Calicut')),
                DataCell(Text('Calicut')),
                DataCell(Text('Calicut')),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
