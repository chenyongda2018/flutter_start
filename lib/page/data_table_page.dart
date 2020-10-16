import 'package:flutter/material.dart';

class DataTablePage extends StatefulWidget {
  @override
  _DataTablePageState createState() => _DataTablePageState();
}

class _DataTablePageState extends State<DataTablePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DataTable"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: DataTable(
//            showBottomBorder: true,
            dividerThickness: 2,
            headingRowColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered))
                return Theme.of(context).colorScheme.primary.withOpacity(0.08);
              return null; // Use the default value.
            }),
            columns: [
              DataColumn(
                  label: InkWell(
                child: Text('姓名'),
                onTap: () {},
              )),
              DataColumn(label: Text('年龄')),
            ],
            rows: [
              DataRow(
                cells: [
                  DataCell(Text('dada')),
                  DataCell(Text('18')),
                ],
                color: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.hovered))
                    return Theme.of(context)
                        .colorScheme
                        .primary
                        .withOpacity(0.1);
                  return null; // Use the default value.
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
