import 'package:bppshop/const/color.dart';
import 'package:bppshop/const/custom_button.dart';
import 'package:bppshop/const/style.dart';
import 'package:bppshop/pages/auth/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpPage extends StatefulWidget {
  static const String routeName = '/sign-up_page';
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController districtController = TextEditingController();
  TextEditingController thanaController = TextEditingController();
  TextEditingController areaController = TextEditingController();
  bool _obscureText = true;

  final districtItems = ["Dhaka", "Bogura", "Rangpur"];
  final thanaItems = ["Mirpur", "Nandigram", "Kaonia"];
  final areaItems = ["Shewrapara", "Nagorkandi", "Kaonia"];
  String ?_selectedDistrict;
  String ?_selectedThana;
  String ?_selectedArea;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: scaffoldBgColor,
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 12.h),
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.h, bottom: 6.h),
                  child: Image.asset("images/logo1.png", height: 70.h, width: 70.w,),
                ),
                Text("Welcome To\nBPPShop Agent Panel", textAlign: TextAlign.center, style: myStyleMontserrat(18.sp, secondaryWhite, FontWeight.w500),),
                SizedBox(height: 12.h,),
                Container(
                  margin: EdgeInsets.only(left: 12.w,right: 12.w),
                  padding: EdgeInsets.all(12),
                  width: double.infinity,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0.r), color: primaryWhite),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 16.h),
                        child: Text("Create Account", style: myStyleMontserrat(22.sp, primaryBlack, FontWeight.w500),),
                      ),
                      Container(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Enter Name",style: myStyleMontserrat(12.sp, primaryBlack, FontWeight.w400),),
                            SizedBox(height: 4.h,),
                            TextFormField(
                              keyboardType: TextInputType.text,
                              textInputAction: TextInputAction.next,
                              controller: nameController,
                              style: TextStyle(color: secondaryBlack),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(left: 12.w, right: 12.w),
                                hintText: "Name",
                                hintStyle: myStyleMontserrat(14.sp, secondaryBlack, FontWeight.w400),
                                filled: true,
                                fillColor: textFieldColor,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(8.r)),
                              ),
                            ),
                            SizedBox(height: 10.h,),
                            Text("Enter Phone Number",style: myStyleMontserrat(12.sp, primaryBlack, FontWeight.w400),),
                            SizedBox(height: 4.h,),
                            TextFormField(
                              keyboardType: TextInputType.number,
                              textInputAction: TextInputAction.next,
                              controller: numberController,
                              style: TextStyle(color: secondaryBlack),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(left: 12.w, right: 12.w),
                                hintText: "Phone Number",
                                hintStyle: myStyleMontserrat(14.sp, secondaryBlack, FontWeight.w400),
                                filled: true,
                                fillColor: textFieldColor,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(8.r)),
                              ),
                            ),
                            SizedBox(height: 10.h,),
                            Text("Enter Email",style: myStyleMontserrat(12.sp, primaryBlack, FontWeight.w400),),
                            SizedBox(height: 4.h,),
                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.next,
                              controller: emailController,
                              style: TextStyle(color: secondaryBlack),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(left: 12.w, right: 12.w),
                                hintText: "Email",
                                hintStyle: myStyleMontserrat(14.sp, secondaryBlack, FontWeight.w400),
                                filled: true,
                                fillColor: textFieldColor,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(8.r)),
                              ),
                            ),
                            SizedBox(height: 10.h,),
                            Text("Enter Password",style: myStyleMontserrat(12.sp, primaryBlack, FontWeight.w400),),
                            SizedBox(height: 4.h,),
                            TextFormField(
                              keyboardType: TextInputType.text,
                              textInputAction: TextInputAction.next,
                              obscureText: _obscureText,
                              controller: passwordController,
                              style: TextStyle(color: secondaryBlack),
                              decoration: InputDecoration(
                                suffixIcon: GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      _obscureText = !_obscureText;
                                    });
                                  },
                                  child: Icon(
                                    _obscureText?Icons.visibility_off_rounded:Icons.visibility,
                                    color: secondaryBlack,
                                    size: 18.sp,
                                  ),
                                ),
                                contentPadding: EdgeInsets.only(left: 12.w, right: 12.w),
                                hintText: "Password",
                                hintStyle: myStyleMontserrat(14.sp, secondaryBlack, FontWeight.w400),
                                filled: true,
                                fillColor: textFieldColor,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(8.r)),
                              ),
                            ),
                            SizedBox(height: 10.h,),
                            Text("Select District",style: myStyleMontserrat(12.sp, primaryBlack, FontWeight.w400),),
                            SizedBox(height: 4.h,),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 12.w,),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.r),
                              color: textFieldColor),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton(
                                  iconDisabledColor: secondaryBlack,
                                  iconEnabledColor: secondaryBlack,
                                  isExpanded: true,
                                  hint: Text('Select District',style: myStyleMontserrat(14.sp, secondaryBlack, FontWeight.w400)), // Not necessary for Option 1
                                  value: _selectedDistrict,
                                  onChanged: (newValue) {
                                    setState(() {
                                      _selectedDistrict = newValue!;
                                    });
                                  },
                                  items: districtItems.map((districtItems) {
                                    return DropdownMenuItem(
                                      child: Text(districtItems, style: myStyleMontserrat(14.sp, secondaryBlack, FontWeight.w400),),
                                      value: districtItems,
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                            SizedBox(height: 10.h,),
                            Text("Select Thana",style: myStyleMontserrat(12.sp, primaryBlack, FontWeight.w400),),
                            SizedBox(height: 4.h,),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 12.w,),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.r),
                                  color: textFieldColor),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton(
                                  iconDisabledColor: secondaryBlack,
                                  iconEnabledColor: secondaryBlack,
                                  isExpanded: true,
                                  hint: Text('Select Thana',style: myStyleMontserrat(14.sp, secondaryBlack, FontWeight.w400)), // Not necessary for Option 1
                                  value: _selectedThana,
                                  onChanged: (newValue) {
                                    setState(() {
                                      _selectedThana = newValue!;
                                    });
                                  },
                                  items: thanaItems.map((thanaItems) {
                                    return DropdownMenuItem(
                                      child: Text(thanaItems, style: myStyleMontserrat(14.sp, secondaryBlack, FontWeight.w400),),
                                      value: thanaItems,
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                            SizedBox(height: 10.h,),
                            Text("Select Area",style: myStyleMontserrat(12.sp, primaryBlack, FontWeight.w400),),
                            SizedBox(height: 4.h,),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 12.w,),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.r),
                                  color: textFieldColor),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton(
                                  iconDisabledColor: secondaryBlack,
                                  iconEnabledColor: secondaryBlack,
                                  isExpanded: true,
                                  hint: Text('Select Thana',style: myStyleMontserrat(14.sp, secondaryBlack, FontWeight.w400)), // Not necessary for Option 1
                                  value: _selectedArea,
                                  onChanged: (newValue) {
                                    setState(() {
                                      _selectedArea = newValue!;
                                    });
                                  },
                                  items: areaItems.map((areaItems) {
                                    return DropdownMenuItem(
                                      child: Text(areaItems, style: myStyleMontserrat(14.sp, secondaryBlack, FontWeight.w400),),
                                      value: areaItems,
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 25.h,),
                      customButton(() { }, "Sign Up"),
                      SizedBox(height: 10.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                              onTap: (){
                                Navigator.of(context).pushNamed(SigninPage.routeName);
                              },
                              child: Text("Sign in", style: myStyleMontserrat(14.sp, darkBlue, FontWeight.w600))),
                          Text(" Instead!", style: myStyleMontserrat(14.sp, secondaryBlack, FontWeight.w400)),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
