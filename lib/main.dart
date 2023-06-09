import 'package:bppshop/const/pending_commission_table.dart';
import 'package:bppshop/drawer/my_drawer.dart';
import 'package:bppshop/pages/agent_update_profile.dart';
import 'package:bppshop/pages/bottom_nav_bar/add_customer_page.dart';
import 'package:bppshop/pages/bottom_nav_bar/agent_profile_page.dart';
import 'package:bppshop/pages/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:bppshop/pages/bottom_nav_bar/home_page.dart';
import 'package:bppshop/pages/bottom_nav_bar/order_history_page.dart';
import 'package:bppshop/pages/commission_history_page.dart';
import 'package:bppshop/pages/customer_list_page.dart';
import 'package:bppshop/pages/customer_page.dart';
import 'package:bppshop/pages/customer_profile_page.dart';
import 'package:bppshop/pages/dashboard_page.dart';
import 'package:bppshop/pages/landing_page.dart';
import 'package:bppshop/pages/auth/login_page.dart';
import 'package:bppshop/pages/my_commission.dart';
import 'package:bppshop/pages/pending_commission_page.dart';
import 'package:bppshop/pages/auth/signup_page.dart';
import 'package:bppshop/pages/update_customer_page.dart';
import 'package:bppshop/pages/wallet_page.dart';
import 'package:bppshop/providers/agent_dashboard_provider.dart';
import 'package:bppshop/providers/agent_profile_provider.dart';
import 'package:bppshop/providers/area_provider.dart';
import 'package:bppshop/providers/auth_provider.dart';
import 'package:bppshop/providers/bottom_navigation_bar_provider.dart';
import 'package:bppshop/providers/district_provider.dart';
import 'package:bppshop/providers/order_history_provider.dart';
import 'package:bppshop/providers/thana_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );
  runApp( MyApp());
}

//check git credential 4rd time

class MyApp extends StatelessWidget {
 MyApp({super.key});

  SigninPage signinPage = SigninPage();




  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context)=> BottomNavigationBarProvider()),
            ChangeNotifierProvider(create: (context)=>AgentProfileProvider()),
            ChangeNotifierProvider(create: (context)=>AuthProvider()),
            ChangeNotifierProvider(create: (context)=>AgentDashboardProvider()),
            ChangeNotifierProvider(create: (context)=>DistrictProvider()),
            ChangeNotifierProvider(create: (context)=>ThanaProvider()),
            ChangeNotifierProvider(create: (context)=>AreaProvider()),
            ChangeNotifierProvider(create: (context)=>OrderHistoryProvider())
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'First Method',
            // You can use the library anywhere in the app even in theme
            theme: ThemeData(
              primarySwatch: Colors.blue,
              textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
            ),
            initialRoute: SigninPage.routeName,
            routes: {
              SignUpPage.routeName : (context) => SignUpPage(),
              SigninPage.routeName : (context) => SigninPage(),
              AddCustomerPage.routeName : (context) => AddCustomerPage(),
              AgentProfilePage.routeName : (context) => AgentProfilePage(),
              BottomNavBar.routeName:(context)=>BottomNavBar(),
              HomePage.routeName:(context)=>HomePage(),
              OrderHistoryPage.routeName:(context)=>OrderHistoryPage(),
              AgentUpdateProfile.routeName:(context)=>AgentUpdateProfile(),
              CommissionHistoryPage.routeName:(context)=>CommissionHistoryPage(),
              CustomerListPage.routeName:(context)=>CustomerListPage(),
              CustomerPage.routeName:(context)=>CustomerPage(),
              CustomerProfilePage.routeName:(context)=>CustomerProfilePage(),
              DashboardPage.routeName:(context)=>DashboardPage(),
              MyCommissionPage.routeName:(context)=>MyCommissionPage(),
              PendingCommissionPage.routeName:(context)=>PendingCommissionPage(),
              UpdateCustomerPage.routeName:(context)=>UpdateCustomerPage(),
              WalletPage.routeName:(context)=>WalletPage(),
              MyDrawerPage.routeName:(context)=>MyDrawerPage(),
              LandingPage.routeName:(context)=>LandingPage()
            },
          ),
        );
      },
    );
  }
}
