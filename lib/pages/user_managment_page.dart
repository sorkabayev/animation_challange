import 'package:animation_challange/model/profile_category_model.dart';
import 'package:animation_challange/pages/widgets/textField_management.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      backgroundColor: Colors.white,
      appBar: AppBar(
        // leading: IconButton(onPressed: (){},icon: Icon(CupertinoIcons.arrow_left,color: Colors.black,),),
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: ListView(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(
                CupertinoIcons.person_alt,
                size: 25,
              ),
              Text(
                "User Management",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              SizedBox(
                width: 80,
              )
            ],
          ),
          const SizedBox(
            height: 70,
          ),
          ListView.separated(
            shrinkWrap: true,
              itemBuilder: (context, index) =>  TextFieldManagement(trc: TextFieldLabels.labels[index],),
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(height: 20),
              itemCount: 3),
          SizedBox(
            height: 400,
          ),
          Align(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: [
                MaterialButton(onPressed: (){},child: Text("Clear"),),
                MaterialButton(color: Color(0xff4F4E9A),onPressed: (){},child: Text("Clear",style: TextStyle(color: Colors.white),),),
              ],
            ),
          )
        ],
      ),
    );
  }
}


