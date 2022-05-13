import 'package:animation_challange/pages/billings_details.dart';
import 'package:animation_challange/pages/notification_page.dart';
import 'package:animation_challange/pages/settings_page.dart';
import 'package:animation_challange/pages/user_managment_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileModel {
  String text;
  Icon icon;
  String? id;



  ProfileModel({required this.text, required this.icon, this.id});

  static List<ProfileModel> elems = [
    ProfileModel(
      text: "User Management",
      icon: const Icon(
        CupertinoIcons.person_alt,
        size: 25,
        color: Colors.black,
      ),
      id:  UserManagementPage.id,
    ),
    ProfileModel(
      text: "Billing details",
      icon: const Icon(
        CupertinoIcons.creditcard,
        size: 25,
        color: Colors.black,
      ), id: BillingDetails.id,
    ),
    ProfileModel(
      text: "Settings",
      icon: const Icon(
        CupertinoIcons.settings,
        size: 25,
        color: Colors.black,
      ), id: SettingsPage.id,
    ),
    ProfileModel(
      text: "Notifications",
      icon: const Icon(
        CupertinoIcons.bell,
        size: 25,
        color: Colors.black,
      ), id: NotificationPage.id,
    ),
    ProfileModel(
      text: "Information",
      icon: const Icon(
        CupertinoIcons.info,
        size: 25,
        color: Colors.black,
      ), id: '',
    ),
    ProfileModel(
      text: "Information",
      icon: const Icon(
        CupertinoIcons.arrow_right,
        size: 25,
        color: Colors.black,
      ), id: '',
    )
  ];
}
//Managements TextFields
class TextFieldLabels{
  String? text2;

  TextFieldLabels({ this.text2});

  static List<TextFieldLabels> labels = [
    TextFieldLabels(text2: 'Full name'),
    TextFieldLabels(text2: 'Phone number'),
    TextFieldLabels(text2: 'Password'),
  ];
}
