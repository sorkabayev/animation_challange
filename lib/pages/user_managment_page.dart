import 'package:animation_challange/model/profile_category_model.dart';
import 'package:animation_challange/pages/widgets/textField_management.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/button_widget.dart';

class UserManagementPage extends StatefulWidget {
  const UserManagementPage({Key? key}) : super(key: key);

  static const String id = "user_management_page";

  @override
  State<UserManagementPage> createState() => _UserManagementPageState();
}

class _UserManagementPageState extends State<UserManagementPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Icon(
                    CupertinoIcons.person_alt,
                    size: 25,
                  ),
                  SizedBox(width: 20),
                  Text(
                    "User Management",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(height: 70),
              Column(
                children: [
                  for( int i = 0; i< 3; i++)
                    Column(
                      children: [
                        TextFieldManagement(
                          trc: TextFieldLabels.labels[i],),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    )
                ],
              ),
             // const Spacer(),
              SizedBox(
                height: 370,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  button(
                      color: Colors.white,
                      text: "Clear",
                      textColor: Colors.black),
                  button(
                      color: Color(0xff4F4E9A),
                      text: "Done",
                      textColor: Colors.white),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
// Clear and Done button

}

