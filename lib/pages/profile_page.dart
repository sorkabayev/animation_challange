import 'dart:math';

import 'package:animation_challange/model/profile_category_model.dart';
import 'package:flutter/material.dart';

import 'widgets/profile_settings_elem.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  static const String id  = "/profile_page";

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          const CircleAvatar(
            radius: 50,
          ),
          const SizedBox(
            height: 20,
          ),
          //Name/number
          Column(
            children: const [
              Text("Jasurbek Mamadaliyev",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 10,
              ),
              Text("+998 90 696 05 96",
                  style: TextStyle(fontSize: 15, color: Color(0xff848484))),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          //All settings
          ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) =>
                  ProfileSettingsElem(e: ProfileModel.elems[index]),
              separatorBuilder: (context, index) {
                if (index == 3) {
                  return const Divider(indent: 30,endIndent: 30,color: Color.fromRGBO(132, 132, 132, 1),);
                }
                return const SizedBox(height: 20);
              },
              itemCount: 6)
        ],
      ),
    );
  }
}
