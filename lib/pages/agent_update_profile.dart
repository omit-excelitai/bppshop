import 'package:bppshop/const/color.dart';
import 'package:bppshop/const/custom_button.dart';
import 'package:bppshop/const/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AgentUpdateProfile extends StatefulWidget {
  const AgentUpdateProfile({Key? key}) : super(key: key);

  @override
  State<AgentUpdateProfile> createState() => _AgentUpdateProfileState();
}

class _AgentUpdateProfileState extends State<AgentUpdateProfile> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController districtController = TextEditingController();
  TextEditingController thanaController = TextEditingController();
  TextEditingController areaController = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
        title: Text("Update Agent Profile", style: myStyleMontserrat(18.sp, secondaryWhite, FontWeight.w400),),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(12),
                width: double.infinity,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0.r), color: primaryWhite),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 116.h,
                          width: 116.w,
                          decoration: BoxDecoration(shape: BoxShape.circle,
                              color: primaryOrange),
                        ),
                        Positioned(
                          bottom: -28,
                            left: 0,
                            right: 0,
                            child: Container(
                          height: 61.h,
                          width: 74.w,
                          decoration: BoxDecoration(shape: BoxShape.circle,
                          color: primaryBlue),
                        )),Positioned(
                          bottom: -45,
                            left: 0,
                            right: 0,
                            child: Image.asset("images/edit.png"),),
                      ],
                    ),

                    SizedBox(height: 24.h,),
                    Container(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Agent Name",style: myStyleMontserrat(12.sp, primaryBlack, FontWeight.w400),),
                          SizedBox(height: 4.h,),
                          TextFormField(
                            controller: numberController,
                            style: TextStyle(color: secondaryBlack),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 12.w, right: 12.w),
                              hintText: "Enter Name",
                              hintStyle: myStyleMontserrat(14.sp, secondaryBlack, FontWeight.w400),
                              filled: true,
                              fillColor: textFieldColor,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(8.r)),
                            ),
                          ),
                          SizedBox(height: 10.h,),
                          Text("Agent Mobile",style: myStyleMontserrat(12.sp, primaryBlack, FontWeight.w400),),
                          SizedBox(height: 4.h,),
                          TextFormField(
                            controller: nameController,
                            style: TextStyle(color: secondaryBlack),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 12.w, right: 12.w),
                              hintText: "Enter Number",
                              hintStyle: myStyleMontserrat(14.sp, secondaryBlack, FontWeight.w400),
                              filled: true,
                              fillColor: textFieldColor,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(8.r)),
                            ),
                          ),
                          SizedBox(height: 10.h,),
                          Text("Agent Email",style: myStyleMontserrat(12.sp, primaryBlack, FontWeight.w400),),
                          SizedBox(height: 4.h,),
                          TextFormField(
                            controller: emailController,
                            style: TextStyle(color: secondaryBlack),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 12.w, right: 12.w),
                              hintText: "example@gmail.com",
                              hintStyle: myStyleMontserrat(14.sp, secondaryBlack, FontWeight.w400),
                              filled: true,
                              fillColor: textFieldColor,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(8.r)),
                            ),
                          ),
                          SizedBox(height: 10.h,),
                          Text("Agent District",style: myStyleMontserrat(12.sp, primaryBlack, FontWeight.w400),),
                          SizedBox(height: 4.h,),
                          TextFormField(
                            controller: districtController,
                            style: TextStyle(color: secondaryBlack),
                            decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.arrow_drop_down_sharp,
                                color: secondaryBlack,
                                size: 26.sp,
                              ),
                              contentPadding: EdgeInsets.only(left: 12.w, right: 12.w),
                              hintText: "Select",
                              hintStyle: myStyleMontserrat(14.sp, secondaryBlack, FontWeight.w400),
                              filled: true,
                              fillColor: textFieldColor,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(8.r)),
                            ),
                          ),SizedBox(height: 10.h,),
                          Text("Agent Thana",style: myStyleMontserrat(12.sp, primaryBlack, FontWeight.w400),),
                          SizedBox(height: 4.h,),
                          TextFormField(
                            controller: thanaController,
                            style: TextStyle(color: secondaryBlack),
                            decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.arrow_drop_down_sharp,
                                color: secondaryBlack,
                                size: 26.sp,
                              ),
                              contentPadding: EdgeInsets.only(left: 12.w, right: 12.w),
                              hintText: "Select",
                              hintStyle: myStyleMontserrat(14.sp, secondaryBlack, FontWeight.w400),
                              filled: true,
                              fillColor: textFieldColor,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(8.r)),
                            ),
                          ),SizedBox(height: 10.h,),
                          Text("Agent Area",style: myStyleMontserrat(12.sp, primaryBlack, FontWeight.w400),),
                          SizedBox(height: 4.h,),
                          TextFormField(
                            controller: areaController,
                            style: TextStyle(color: secondaryBlack),
                            decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.arrow_drop_down_sharp,
                                color: secondaryBlack,
                                size: 26.sp,
                              ),
                              contentPadding: EdgeInsets.only(left: 12.w, right: 12.w),
                              hintText: "Select",
                              hintStyle: myStyleMontserrat(14.sp, secondaryBlack, FontWeight.w400),
                              filled: true,
                              fillColor: textFieldColor,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(8.r)),
                            ),
                          ),
                          SizedBox(height: 10.h,),
                          Text("Agent Local Address",style: myStyleMontserrat(12.sp, primaryBlack, FontWeight.w400),),
                          SizedBox(height: 4.h,),
                          TextFormField(
                            controller: addressController,
                            style: TextStyle(color: secondaryBlack),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 12.w, right: 12.w, top: 40.h, bottom: 40.h),
                              hintText: "16/1 (9th Floor), Alhaz Shamsuddin Mansion, New Eskaton Garden Road",
                              hintStyle: myStyleMontserrat(14.sp, secondaryBlack, FontWeight.w400),
                              hintMaxLines: 2,
                              filled: true,
                              fillColor: textFieldColor,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(8.r)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 18.h,),
                    Align(
                      alignment: Alignment.topRight,
                      child: AddandUpdateButton(onTap: (){
                        //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CustomerProfilePage()));
                      }, title: "Update"),
                    )
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
