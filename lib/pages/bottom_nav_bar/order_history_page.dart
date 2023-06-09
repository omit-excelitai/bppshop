import 'package:bppshop/const/color.dart';
import 'package:bppshop/const/customer_list_table.dart';
import 'package:bppshop/const/order_history_table.dart';
import 'package:bppshop/const/style.dart';
import 'package:bppshop/drawer/my_drawer.dart';
import 'package:bppshop/providers/bottom_navigation_bar_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class OrderHistoryPage extends StatefulWidget {
  static const String routeName = '/order_history_page';
  const OrderHistoryPage({Key? key}) : super(key: key);

  @override
  State<OrderHistoryPage> createState() => _OrderHistoryPageState();
}

class _OrderHistoryPageState extends State<OrderHistoryPage> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey();
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavigationBarProvider>(
        builder: (context, bottomNavigationBarProvider, child){
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
                title: Text("Order History", style: myStyleMontserrat(18.sp, secondaryWhite, FontWeight.w400),),
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(12.w, 12.h, 12.w, 12.h),
                      child: TextFormField(
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
                    ),
                    OrderHistoryTable(),
                    Padding(
                      padding: EdgeInsets.fromLTRB(12.w, 12.h, 12.w, 12.h),
                      child: Row(
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
                    ),
                  ],
                ),
              ),
              //bottomNavigationBar: bottomNavigationBarProvider.bottomNavigationBar(context,true),
            ),
          );
        }
    );
  }
}
