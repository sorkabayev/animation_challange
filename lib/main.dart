import 'package:animation_challange/pages/billings_details.dart';
import 'package:animation_challange/pages/notification_page.dart';
import 'package:animation_challange/pages/settings_page.dart';
import 'package:animation_challange/pages/user_managment_page.dart';
import 'package:animation_challange/pages/home/home_page.dart';
import 'package:animation_challange/pages/menu_page.dart';
import 'package:animation_challange/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final String date = "qeeee";

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider<String>(
      create: (context)=> date,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const ProfilePage(),
        routes: {
          ProfilePage.id: (context) => const ProfilePage(),
          UserManagementPage.id: (context) => const UserManagementPage(),
          BillingDetails.id: (context) => const BillingDetails(),
          SettingsPage.id: (context) => const SettingsPage(),
          NotificationPage.id: (context) => const NotificationPage(),
        },
      ),
    );
  }
}
