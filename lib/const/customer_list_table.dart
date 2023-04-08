import 'package:bppshop/const/color.dart';
import 'package:bppshop/const/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class CustomerListTable extends StatefulWidget {
  const CustomerListTable({Key? key}) : super(key: key);

  @override
  State<CustomerListTable> createState() => _CustomerListTableState();
}

class _CustomerListTableState extends State<CustomerListTable> {
  List<CustomerList> customerList = <CustomerList>[];
  late CustomerListTableDataSource customerListTableDataSource;

  @override
  void initState() {
    super.initState();
    customerList = getCustomerListData();
    customerListTableDataSource = CustomerListTableDataSource(customerListData: customerList);
  }

  @override
  Widget build(BuildContext context) {
    return SfDataGrid(
      shrinkWrapRows: true,
      isScrollbarAlwaysShown: true,
      frozenColumnsCount: 1,
      footerFrozenColumnsCount: 1,
      defaultColumnWidth: 100.w,
      source: customerListTableDataSource,
      columnWidthMode: ColumnWidthMode.fill,
      columns: <GridColumn>[
        GridColumn(
            columnName: 'customerID',
            label: Container(
                color: primaryDeepBlue,
                padding: EdgeInsets.all(12),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Customer ID',
                  style: myStyleMontserrat(12.sp, countColor, FontWeight.w600),
                ))),
        GridColumn(
            columnWidthMode: ColumnWidthMode.auto,
            columnName: 'customerName',
            label: Container(
                color: primaryDeepBlue,
                padding: EdgeInsets.all(12),
                alignment: Alignment.centerLeft,
                child: Text('Customer Name',
                  style: myStyleMontserrat(12.sp, countColor, FontWeight.w600),))),
        GridColumn(
            columnWidthMode: ColumnWidthMode.auto,
            columnName: 'customerEmail',
            label: Container(
                color: primaryDeepBlue,
                padding: EdgeInsets.all(12),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Customer Email',
                  style: myStyleMontserrat(12.sp, countColor, FontWeight.w600),
                ))),
        GridColumn(
            columnWidthMode: ColumnWidthMode.auto,
            columnName: 'mobileNumber',
            label: Container(
                color: primaryDeepBlue,
                padding: EdgeInsets.all(12),
                alignment: Alignment.centerLeft,
                child: Text('Mobile Number',
                  style: myStyleMontserrat(12.sp, countColor, FontWeight.w600),))),
        GridColumn(
            columnWidthMode: ColumnWidthMode.auto,
            columnName: 'customerAddress',
            label: Container(
                color: primaryDeepBlue,
                padding: EdgeInsets.all(12),
                alignment: Alignment.centerLeft,
                child: Text('Customer Address',
                  style: myStyleMontserrat(12.sp, countColor, FontWeight.w600),))),
        GridColumn(
            columnWidthMode: ColumnWidthMode.auto,
            maximumWidth: 102.w,
            columnName: 'action',
            label: Container(
                color: primaryDeepBlue,
                padding: EdgeInsets.all(12),
                alignment: Alignment.center,
                child: Text('Action',
                  style: myStyleMontserrat(12.sp, countColor, FontWeight.w600),))),
      ],
    );
  }

  List<CustomerList> getCustomerListData() {
    return [
      CustomerList("#100470", "MD. Ahosan Habib", "example@gmail.com", "01626658415", "16/1 (9th Floor), Alhaz Shamsuddin Mansion,\nNew Eskaton Garden Road"),
    ];
  }
}

class CustomerList {
  CustomerList(this.customerID, this.customerName, this.customerEmail, this.mobileNumber, this.customerAddress);

  final String customerID;
  final String customerName;
  final String customerEmail;
  final String mobileNumber;
  final String customerAddress;
}

class CustomerListTableDataSource extends DataGridSource {
  CustomerListTableDataSource({required List<CustomerList> customerListData}) {
    _customerListData = customerListData
        .map<DataGridRow>((e) => DataGridRow(cells: [
      DataGridCell<String>(columnName: 'customerID', value: e.customerID),
      DataGridCell<String>(columnName: 'customerName', value: e.customerName),
      DataGridCell<String>(columnName: 'customerEmail', value: e.customerEmail),
      DataGridCell<String>(columnName: 'mobileNumber', value: e.mobileNumber),
      DataGridCell<String>(columnName: 'customerAddress', value: e.customerAddress),
      //DataGridCell<String>(columnName: 'action', value: e.action),
    ]))
        .toList();
  }

  List<DataGridRow> _customerListData = [];
  @override
  List<DataGridRow> get rows => _customerListData;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((e) {
          return Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(12),
            child: Text(e.value.toString(),
              style: myStyleMontserrat(12.sp, homeItemColor, FontWeight.w500),
            ),
          );
        }).toList());
  }
}