
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:flutter/material.dart';

// class TableData {
//   final String customerID;
//   final String orderID;
//   final String totalProducts;
//   final String totalAmount;
//
//   TableData(this.customerID, this.orderID, this.totalProducts, this.totalAmount);
//
//   List<TableData> getTableData(){
//     return [
//       TableData("#100470", "#100470", "2568848150", "৳252668123626"),
//       TableData("#100470", "#100470", "2568848150", "৳252668123626"),
//       TableData("#100470", "#100470", "2568848150", "৳252668123626"),
//       TableData("#100470", "#100470", "2568848150", "৳252668123626"),
//       TableData("#100470", "#100470", "2568848150", "৳252668123626"),
//       TableData("#100470", "#100470", "2568848150", "৳252668123626"),
//       TableData("#100470", "#100470", "2568848150", "৳252668123626"),
//       TableData("#100470", "#100470", "2568848150", "৳252668123626"),
//       TableData("#100470", "#100470", "2568848150", "৳252668123626"),
//       TableData("#100470", "#100470", "2568848150", "৳252668123626")
//     ];
//   }
// }

// class TableData {
//   final String customerID;
//   final String orderID;
//   final String totalProducts;
//   final String totalAmount;
//
//   TableData(this.customerID, this.orderID, this.totalProducts,
//       this.totalAmount);
// }
//
// List<TableData> getTableData() {
//   return [
//     TableData("#100470", "#100470", "2568848150", "৳252668123626"),
//     TableData("#100470", "#100470", "2568848150", "৳252668123626"),
//     TableData("#100470", "#100470", "2568848150", "৳252668123626"),
//     TableData("#100470", "#100470", "2568848150", "৳252668123626"),
//     TableData("#100470", "#100470", "2568848150", "৳252668123626"),
//     TableData("#100470", "#100470", "2568848150", "৳252668123626"),
//     TableData("#100470", "#100470", "2568848150", "৳252668123626"),
//     TableData("#100470", "#100470", "2568848150", "৳252668123626"),
//     TableData("#100470", "#100470", "2568848150", "৳252668123626"),
//     TableData("#100470", "#100470", "2568848150", "৳252668123626")
//   ];
// }
//
// class TableDataSource extends DataGridSource {
//   TableDataSource({required List<TableData> tableData}) {
//     _employeeData = tableData
//         .map<DataGridRow>((e) => DataGridRow(cells: [
//       DataGridCell<int>(columnName: 'id', value: e.id),
//       DataGridCell<String>(columnName: 'name', value: e.name),
//       DataGridCell<String>(
//           columnName: 'designation', value: e.designation),
//       DataGridCell<int>(columnName: 'salary', value: e.salary),
//     ]))
//         .toList();
//   }
//
//   List<DataGridRow> _employeeData = [];
//
//   @override
//   List<DataGridRow> get rows => _employeeData;
//
//   @override
//   DataGridRowAdapter buildRow(DataGridRow row) {
//     return DataGridRowAdapter(
//         cells: row.getCells().map<Widget>((e) {
//           return Container(
//             alignment: Alignment.center,
//             padding: EdgeInsets.all(8.0),
//             child: Text(e.value.toString()),
//           );
//         }).toList());
//   }
// }

