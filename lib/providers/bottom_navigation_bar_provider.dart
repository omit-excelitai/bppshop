import 'package:bppshop/const/color.dart';
import 'package:bppshop/const/style.dart';
import 'package:bppshop/pages/bottom_nav_bar/add_customer_page.dart';
import 'package:bppshop/pages/bottom_nav_bar/agent_profile_page.dart';
import 'package:bppshop/pages/bottom_nav_bar/home_page.dart';
import 'package:bppshop/pages/bottom_nav_bar/order_history_page.dart';
import 'package:bppshop/pages/landing_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavigationBarProvider with ChangeNotifier{
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;

  void updateSelectedIndex(){
    _selectedIndex=0;
    notifyListeners();
  }

  Widget bottomNavigationBar(BuildContext context,bool isLanding) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: navBarBgColor,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      unselectedLabelStyle: myStyleMontserrat(11.sp, bottomLabelColor, FontWeight.w500),
      selectedLabelStyle: myStyleMontserrat(11.sp, bottomLabelColor, FontWeight.w500),
      selectedItemColor: primaryOrange,
      unselectedItemColor: bottomLabelColor,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          //backgroundColor: navBarBgColor,
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          //backgroundColor: navBarBgColor,
          icon: Icon(Icons.access_time_filled_outlined),
          label: 'Order History',
        ),
        BottomNavigationBarItem(
          //backgroundColor: navBarBgColor,
          icon: Icon(Icons.person),
          label: 'Profile',
        ),BottomNavigationBarItem(
          //backgroundColor: navBarBgColor,
          icon: Icon(Icons.person_add_alt_1),
          label: 'Add Customer',
        ),
      ],
      currentIndex: _selectedIndex,
      onTap:(index){
        onItemTapped(index,context,isLanding);
      },
    );
  }

   onItemTapped(int index,BuildContext context,bool isLanding) {
    _selectedIndex = index;
    if(!isLanding){
      Navigator.pushNamedAndRemoveUntil(context, LandingPage.routeName, (route) => false);
    }
    notifyListeners();
  }

  Widget? getWidget(int index,BuildContext context) {
    if (index == 0 ) {
      return HomePage();
    }
    if (index == 1 ) {
      return OrderHistoryPage();
    }
    if (index == 2) {
      return AgentProfilePage();
    }
    if (index == 3) {
      return  AddCustomerPage() ;
    }
    notifyListeners();
  }

}