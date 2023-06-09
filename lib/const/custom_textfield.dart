// import 'package:bppshop/const/color.dart';
// import 'package:bppshop/const/style.dart';
// import 'package:flutter/material.dart';
//
// class CustomeTextField extends StatelessWidget {
//   const CustomeTextField(
//       {super.key,
//         required this.nameController,
//         this.validator,
//         this.hintText,
//         this.keyType,
//         this.focusNode,
//         this.prefixIcon,
//         this.onEditingComplete,
//         this.maxNumber,
//         this.minNumber,
//         this.suffixIcon,
//         this.initialText,
//         this.isObsecure,
//         this.textInputAction,
//         this.formatter,
//         this.onChangeFunction});
//
//   final TextEditingController nameController;
//   final String? hintText, initialText;
//   final TextInputType? keyType;
//   final dynamic validator, formatter;
//   final dynamic prefixIcon;
//   final FocusNode? focusNode;
//   final dynamic suffixIcon;
//   final Function? onChangeFunction;
//   final VoidCallback? onEditingComplete;
//   final TextInputAction? textInputAction;
//   final int? maxNumber, minNumber;
//   final bool? isObsecure;
//
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       minLines: 1,
//       autofocus: false,
//       maxLines: maxNumber ?? 1,
//       initialValue: initialText,
//       textInputAction: textInputAction,
//       focusNode: focusNode,
//       inputFormatters: formatter,
//       keyboardType: keyType,
//       validator: validator,
//       controller: nameController,
//       obscureText: isObsecure ?? false,
//       style: myStyleMontserrat(14.0, secondaryBlack, FontWeight.w400),
//       onEditingComplete: onEditingComplete,
//       decoration: InputDecoration(
//         suffixIcon: suffixIcon,
//         focusedErrorBorder: InputBorder.none,
//         hoverColor: Colors.black,
//         filled: true,
//         errorBorder: InputBorder.none,
//         // suffixText: suffixText,
//         errorStyle:
//         myStyleMontserrat(12, Colors.redAccent.withOpacity(0.9), FontWeight.w500),
//         contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 0),
//         fillColor: Colors.white,
//         focusedBorder: OutlineInputBorder(
//           borderSide: const BorderSide(color: Colors.transparent, width: 1.0),
//           borderRadius: BorderRadius.circular(12.0),
//         ),
//
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12.0),
//           borderSide: BorderSide(
//             color: Colors.transparent,
//             width: 2.0,
//           ),
//         ),
//         labelText: hintText,
//         hintStyle: myStyleMontserrat(14, secondaryBlack, FontWeight.w400),
//         prefixIcon: Container(
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: textFieldColor,
//             ),
//             margin: EdgeInsets.only(left: 12, right: 10),
//             child: prefixIcon),
//         labelStyle: myStyleMontserrat(12, Colors.black54),
//         hintText: hintText,
//       ),
//     );
//   }
// }
//
// // class CustomeTextField2 extends StatelessWidget {
// //   const CustomeTextField2(
// //       {super.key,
// //         required this.controller,
// //         this.validator,
// //         this.hintText,
// //         this.keyType,
// //         this.prefixIcon,
// //         this.onEditingComplete,
// //         this.focusNode,
// //         this.onTap,
// //         this.maxLine,
// //         this.textInputAction,
// //         this.onChangeFunction});
// //
// //   final TextEditingController controller;
// //   final String? hintText;
// //   final TextInputType? keyType;
// //   final dynamic validator;
// //   final dynamic prefixIcon;
// //   final VoidCallback? onTap;
// //   final FocusNode? focusNode;
// //   final Function? onChangeFunction;
// //   final VoidCallback? onEditingComplete;
// //   final int? maxLine;
// //   final TextInputAction? textInputAction;
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return TextFormField(
// //         focusNode: focusNode,
// //         textInputAction: textInputAction,
// //         onEditingComplete: onEditingComplete,
// //         onTap: onTap,
// //         keyboardType: keyType,
// //         validator: validator,
// //         // maxLines: maxLine ?? 1,
// //         controller: controller,
// //         style: myStyleMontserrat(14.0, Colors.black54),
// //         decoration: InputDecoration(
// //           errorStyle: myStyleMontserrat(12, primaryWhite),
// //           border: InputBorder.none,
// //           focusedErrorBorder: InputBorder.none,
// //           errorBorder: InputBorder.none,
// //           disabledBorder: InputBorder.none,
// //           hintText: "$hintText",
// //           hintStyle: myStyleMontserrat(14, secondaryBlack, FontWeight.w400),
// //           contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
// //           filled: true,
// //           focusedBorder: OutlineInputBorder(
// //             borderSide: BorderSide(color: Colors.red, width: 1),
// //             borderRadius: BorderRadius.circular(8.0),
// //           ),
// //           fillColor: Colors.white,
// //           enabledBorder: OutlineInputBorder(
// //             borderRadius: BorderRadius.circular(8.0),
// //             borderSide: BorderSide(
// //               color: Colors.white,
// //               width: 1,
// //             ),
// //           ),
// //         ));
// //   }
// // }