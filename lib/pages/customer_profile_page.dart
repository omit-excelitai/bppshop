import 'package:bppshop/const/color.dart';
import 'package:bppshop/const/style.dart';
import 'package:bppshop/pages/update_customer_page.dart';
import 'package:bppshop/providers/bottom_navigation_bar_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class CustomerProfilePage extends StatefulWidget {
  static const String routeName = '/customer_profile_page';
  const CustomerProfilePage({Key? key}) : super(key: key);

  @override
  State<CustomerProfilePage> createState() => _CustomerProfilePageState();
}

class _CustomerProfilePageState extends State<CustomerProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavigationBarProvider>(
      builder: (BuildContext context, bottomNavigationBarProvider, Widget? child) {
        return Scaffold(
          backgroundColor: bgColor,
          appBar: AppBar(
            backgroundColor: appBarColor,
            centerTitle: false,
            leading: InkWell(
                onTap: (){
                  Navigator.of(context).pop();
                },
                child: Icon(Icons.arrow_back_outlined, size: 16.5.sp, color: secondaryWhite,)),
            title: Text("Customer Profile", style: myStyleMontserrat(18.sp, secondaryWhite, FontWeight.w400),),
          ),
          body: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 12.h),
                    padding: EdgeInsets.all(12),
                    width: double.infinity,
                    color: primaryWhite,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  height: 116.h,
                                  width: 116.w,
                                  decoration: BoxDecoration(shape: BoxShape.circle,
                                      color: primaryOrange),
                                ),
                              ),
                              flex: 2,),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text("Customer ID:", style: myStyleMontserrat(14.sp, homeItemColor, FontWeight.w400),),
                                  Text("550", style: myStyleMontserrat(24.sp, homeItemColor, FontWeight.w600),),
                                ],
                              ),
                              flex: 2,),
                          ],
                        ),
                        SizedBox(height: 12.h,),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("CONTACT INFORMATION:", style: myStyleMontserrat(14.sp, homeItemColor, FontWeight.w600),),
                              ListTile(
                                title: Text("Customer Name", style: myStyleMontserrat(14.sp, homeItemColor, FontWeight.w500),),
                                subtitle: Text("Farhan", style: myStyleMontserrat(14.sp, homeItemColor, FontWeight.w500),),
                              ),
                              ListTile(
                                title: Text("Email", style: myStyleMontserrat(14.sp, homeItemColor, FontWeight.w500),),
                                subtitle: Text("example@gmail.com", style: myStyleMontserrat(14.sp, homeItemColor, FontWeight.w500),),
                              ),
                              ListTile(
                                title: Text("Mobile", style: myStyleMontserrat(14.sp, homeItemColor, FontWeight.w500),),
                                subtitle: Text("01711369672", style: myStyleMontserrat(14.sp, homeItemColor, FontWeight.w500),),
                              ),
                              ListTile(
                                title: Text("Address", style: myStyleMontserrat(14.sp, homeItemColor, FontWeight.w500),),
                                subtitle: Text("16/1 (9th Floor), Alhaz Shamsuddin Mansion, New Eskaton Garden Road,", style: myStyleMontserrat(14.sp, homeItemColor, FontWeight.w500),),
                              ),
                              SizedBox(height: 12.h,),
                              InkWell(
                                onTap: (){
                                  Navigator.of(context).pushNamed(UpdateCustomerPage.routeName);
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 36.h,
                                  width: double.infinity,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.r),
                                    color: primaryBlue,),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset("images/edit.png"),
                                      Text("Update Customer", style: myStyleMontserrat(12.sp, secondaryWhite, FontWeight.w600),),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: bottomNavigationBarProvider.bottomNavigationBar(context,false),
        );
      },
    );
  }
}
