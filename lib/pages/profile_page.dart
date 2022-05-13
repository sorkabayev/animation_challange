import 'dart:math';

import 'package:animation_challange/model/profile_category_model.dart';
import 'package:flutter/material.dart';

import 'widgets/profile_settings_elem.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  static const String id = "/profile_page";

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 40),
            const CircleAvatar(radius: 50),
            const SizedBox(height: 20),
            //Name/number
            Column(
              children: const [
                Text("Jasurbek Mamadaliyev",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text("+998 90 696 05 96",
                    style: TextStyle(fontSize: 15, color: Color(0xff848484))),
              ],
            ),
            const SizedBox(height: 40),
            //All settings
            Theme(
              data: ThemeData(
                colorScheme:
                    ColorScheme.fromSwatch().copyWith(secondary: Colors.white),
                dividerColor: Color.fromRGBO(132, 132, 132, 1),
              ),
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 10),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  print(ProfileModel.elems[index].id);
                  return ProfileSettingsElem(e: ProfileModel.elems[index]);
                },
                separatorBuilder: (context, index) {
                  if (index == 3) {
                    return const Divider(
                      indent: 30,
                      endIndent: 30,
                    );
                  }
                  return const SizedBox(height: 20);
                },
                itemCount: 6,
              ),
            )
          ],
        ),
      ),
    );
  }
}
