import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  static const String id = "settings_page";

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

bool switched = false;

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
                CupertinoIcons.settings,
                size: 25,
              ),
              Text(
                "Settings",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 100,
              ),
            ],
          ),
          const SizedBox(
            height: 54,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: Column(
              children: [
                ListTile(
                  leading: Text(
                    "Dark mode",
                    style: TextStyle(fontSize: 18),
                  ),
                  trailing: CupertinoSwitch(
                    activeColor: Colors.black,
                    value: switched,
                    onChanged: (value) {
                      setState(
                        () {
                          //do something
                          switched = value;
                        },
                      );
                    },
                  ),
                ),
                const Divider(
                  color: Colors.black,
                  indent: 10,
                  endIndent: 10,
                ),
                ListTile(
                  leading: const Text(
                    "Language",
                    style: TextStyle(fontSize: 18),
                  ),
                  trailing: IconButton(
                    icon: const Icon(CupertinoIcons.forward),
                    onPressed: () {},
                  ),
                ),
                const Divider(
                  color: Colors.black,
                  indent: 10,
                  endIndent: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
