import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'widgets/notification_container.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  static const String id = "notification_page";

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,size: 24,))
        ],
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(
                CupertinoIcons.bell,
                size: 25,
              ),
              Text(
                "Notifications",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 80,
              ),
            ],
          ),
          const SizedBox(
            height: 39,
          ),
          ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) => const NotificationContainer(),
            separatorBuilder: (BuildContext context, int index) => const SizedBox(),
            itemCount: 6,
          ),
        ],
      ),
    );
  }
}




