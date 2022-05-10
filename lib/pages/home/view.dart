import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => HomeProvider(),
      builder: (context, child) => _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('home'),
          centerTitle: true,
        ),
        body: Column(children: [
          MaterialButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => buildSheet(),
              );
            },
            child: Text("sheet"),
          ),
        ]));
  }

  Widget buildSheet() => DraggableScrollableSheet(
      initialChildSize: 0.5,
      minChildSize: 0.01,
      maxChildSize: 0.5,
      builder: (BuildContext context, ScrollController scrollController) =>
          ListView(
            controller: scrollController,
            children: [
              Container(
                color: Colors.grey,
                width: 10,
                height: 2,
              ),
              const Center(
                child: SizedBox(
                    width: 150,
                    height: 20,
                    child: Text(
                      "Accommodations",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              const SizedBox(
                height: 2,
              ),
              SizedBox(
                height: 400,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (_, context) => containerBuild(),
                ),
              ),
            ],
          ));
}

Container containerBuild() {
  return Container(
    margin: EdgeInsets.all(20),
    decoration: BoxDecoration(
        color: Colors.amber, borderRadius: BorderRadius.circular(20)),
    height: 200,
    width: 400,
  );
}
