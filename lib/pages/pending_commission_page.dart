import 'package:bppshop/const/color.dart';
import 'package:bppshop/const/style.dart';
import 'package:bppshop/drawer/my_drawer.dart';
import 'package:bppshop/model/table_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class PendingCommissionPage extends StatefulWidget {
  PendingCommissionPage({Key? key, this.tableData}) : super(key: key);
  final TableData? tableData;

  @override
  State<PendingCommissionPage> createState() => _PendingCommissionPageState();
}

class _PendingCommissionPageState extends State<PendingCommissionPage> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey();
  TextEditingController searchController = TextEditingController();

  // class TableData {
  // final String customerID;
  // final String orderID;
  // final String totalProducts;
  // final String totalAmount;
  // TableData(this.customerID, this.orderID, this.totalProducts, this.totalAmount);
  // }

  // late EmployeeDataSource _employeeDataSource;
  //
  // List<Employee> _employees = <Employee>[];
  //
  // @override
  // void initState() {
  // super.initState();
  // _employees = getEmployeeData();
  // _employeeDataSource = EmployeeDataSource(employees: _employees);
  // }

  // List<TableData> getTableData(){
  // return [
  // TableData("#100470", "#100470", "2568848150", "৳252668123626"),
  // TableData("#100470", "#100470", "2568848150", "৳252668123626"),
  // TableData("#100470", "#100470", "2568848150", "৳252668123626"),
  // TableData("#100470", "#100470", "2568848150", "৳252668123626"),
  // TableData("#100470", "#100470", "2568848150", "৳252668123626"),
  // TableData("#100470", "#100470", "2568848150", "৳252668123626"),
  // TableData("#100470", "#100470", "2568848150", "৳252668123626"),
  // TableData("#100470", "#100470", "2568848150", "৳252668123626"),
  // TableData("#100470", "#100470", "2568848150", "৳252668123626"),
  // TableData("#100470", "#100470", "2568848150", "৳252668123626")
  // ];
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: MyDrawerPage(),
        key: _scaffoldkey,
        backgroundColor: bgColor,
        appBar: AppBar(
          backgroundColor: appBarColor,
          centerTitle: false,
          leading: InkWell(
              onTap: (){
                _scaffoldkey.currentState!.openDrawer();
              },
              child: Icon(Icons.menu, size: 16.5.sp, color: secondaryWhite,)),
          title: Text("My Commission", style: myStyleMontserrat(18.sp, secondaryWhite, FontWeight.w400),),
        ),
        body: Container(
          padding: EdgeInsets.all(12),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Text("Pending Commission", style: myStyleMontserrat(18.sp, homeItemColor, FontWeight.w500),)),
                SizedBox(height: 18.h,),
                TextFormField(
                  controller: searchController,
                  style: TextStyle(color: secondaryBlack),
                  decoration: InputDecoration(
                    prefixIcon: Image.asset("images/search.png"),
                    contentPadding: EdgeInsets.only(left: 12.w, right: 12.w),
                    hintText: "Search customer name/id",
                    hintStyle: myStyleMontserrat(14.sp, secondaryBlack, FontWeight.w500),
                    filled: true,
                    fillColor: primaryWhite,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1.w, color: textfieldBorderColor),
                        borderRadius: BorderRadius.circular(8.r)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1.w, color: textfieldBorderColor),
                        borderRadius: BorderRadius.circular(8.r)),
                  ),
                ),
                SizedBox(height: 12.h,),
                // SfDataGrid(
                //   source: ,
                //   columns: [
                //     GridColumn(
                //         columnName: 'id',
                //         label: Container(
                //             padding: EdgeInsets.symmetric(horizontal: 16.0),
                //             alignment: Alignment.centerRight,
                //             child: Text(
                //               'ID',
                //               overflow: TextOverflow.ellipsis,
                //             ))),
                //     GridColumn(
                //         columnName: 'name',
                //         label: Container(
                //             padding: EdgeInsets.symmetric(horizontal: 16.0),
                //             alignment: Alignment.centerLeft,
                //             child: Text(
                //               'Name',
                //               overflow: TextOverflow.ellipsis,
                //             ))),
                //     GridColumn(
                //         columnName: 'designation',
                //         label: Container(
                //             padding: EdgeInsets.symmetric(horizontal: 16.0),
                //             alignment: Alignment.centerLeft,
                //             child: Text(
                //               'Designation',
                //               overflow: TextOverflow.ellipsis,
                //             ))),
                //     GridColumn(
                //         columnName: 'salary',
                //         label: Container(
                //             padding: EdgeInsets.symmetric(horizontal: 16.0),
                //             alignment: Alignment.centerRight,
                //             child: Text(
                //               'Salary',
                //               overflow: TextOverflow.ellipsis,
                //             ))),
                //   ],
                // ),

                SizedBox(height: 12.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        alignment: Alignment.center,
                        height: 36.h,
                        width: 82.w,
                        decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(4.r), bottomLeft: Radius.circular(4.r)),
                            border: Border.all(width: 1.w, color: containerBorderColor), color: primaryWhite),
                        child: Text("Previous", style: myStyleMontserrat(14.sp, homeItemColor, FontWeight.w400),),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 17.w),
                      height: 36.h,
                      color: primaryDeepBlue,
                      child: Text("1", style: myStyleMontserrat(14.sp, countColor, FontWeight.w600),),
                    ),
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        alignment: Alignment.center,
                        height: 36.h,
                        width: 57.w,
                        decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(4.r), bottomRight: Radius.circular(4.r)),
                            border: Border.all(width: 1.w, color: containerBorderColor), color: primaryWhite),
                        child: Text("Next", style: myStyleMontserrat(14.sp, homeItemColor, FontWeight.w400),),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}