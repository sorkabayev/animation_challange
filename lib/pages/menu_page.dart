import 'package:animation_challange/model/grid_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hive/hive.dart';

import '../model/model.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> with TickerProviderStateMixin {
  TabController? _tabController;
  int sellectedIndex = 0;
  int currentIndex = 1;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          const Image(
            image: AssetImage('asset/logo/Picco.png'),
            width: 70,
            height: 71,
          ),
          const SizedBox(
            width: 280,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.person,
                color: Colors.black,
              ))
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          //glavniy rasm
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    end: Alignment.bottomCenter,
                    begin: Alignment.topCenter,
                    colors: [
                  Color.fromRGBO(86, 85, 158, 1),
                  Color.fromRGBO(86, 85, 158, 0.82),
                  Color.fromRGBO(86, 85, 158, 0.45),
                  Color.fromRGBO(86, 85, 158, 0),
                  Color.fromRGBO(86, 85, 158, 0.19)
                ])),
            height: 250,
            child: Stack(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 250,
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        margin: EdgeInsets.only(top: 15),
                        height: 250,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("asset/image/12.png"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 30),
                  child: Text(
                    "Find your best place\nto live and relax",
                    style: const TextStyle(color: Colors.white, fontSize: 23),
                  ),
                ),
              ],
            ),
          ),
          //Tab Bar
          TabBar(
            indicatorColor: Color.fromRGBO(113, 105, 249, 2),
            unselectedLabelColor: Colors.black,
            labelColor: const Color.fromRGBO(113, 105, 249, 2),
            controller: _tabController,
            tabs: const [
              Tab(
                text: "By houses",
              ),
              Tab(text: "Rent houses"),
            ],
          ),
          //Tab Bar View
          SizedBox(
            height: 280,
            child: TabBarView(controller: _tabController, children: <Widget>[
              GridView.builder(
                shrinkWrap: true,
                itemCount: AppartList.products.length,
                scrollDirection: Axis.vertical,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 2,
                    mainAxisSpacing: 2,
                    crossAxisCount: 3),
                itemBuilder: (BuildContext context, int index) {
                  return buildCard(AppartList.products[index], index);
                },

              ),
              GridView.builder(
                shrinkWrap: true,
                itemCount: AppartList.products.length,
                scrollDirection: Axis.vertical,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 2,
                    mainAxisSpacing: 2,
                    crossAxisCount: 3),
                itemBuilder: (BuildContext context, int index) {
                  return buildCard2(AppartList.products[index], index);
                },

              ),
            ]),
          ),
          const SizedBox(
            height: 10,
          ),
          //Choosing city
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text("Choose a city"),
          ),
          const SizedBox(
            height: 10,
          ),
          //bottomList
          SizedBox(
              height: 160,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Im.img.length,
                  itemBuilder: (context, index) =>
                      buildContainer(Im.img[index]))),
        ],
      ),
    );
  }
//Grid Senter
  GestureDetector buildCard(Appart elem, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          sellectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Container(
          decoration: BoxDecoration(
              color: sellectedIndex == index
                  ? Color.fromRGBO(86, 85, 158, 1)
                  : Colors.white,
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Icon(
                elem.icon,
                color: sellectedIndex == index
                    ? Colors.white
                    : Colors.black,
                size: 33,
              ),
              Text(
                elem.name,
                style: TextStyle(fontSize: 14,color: sellectedIndex == index
                    ? Colors.white
                    : Colors.black,),
              )
            ],
          ),
          height: 120,
          width: 120,
        ),
      ),
    );
  }
  //Second Grid
  GestureDetector buildCard2(Appart elem, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          sellectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Container(
          decoration: BoxDecoration(
              color: sellectedIndex == index
                  ? Color.fromRGBO(86, 85, 158, 1)
                  : Colors.white,
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Icon(
                elem.icon,
                color: sellectedIndex == index
                    ? Colors.white
                    : Colors.black,
                size: 45,
              ),
              Text(
                elem.name,
                style: TextStyle(fontSize: 20,color: sellectedIndex == index
                    ? Colors.white
                    : Colors.black,),
              )
            ],
          ),
          height: 120,
          width: 120,
        ),
      ),
    );
  }

  // Column buildColumn(int index) {
  //   return Column(
  //     mainAxisAlignment: MainAxisAlignment.spaceAround,
  //     //crossAxisAlignment: CrossAxisAlignment.center,
  //     children: [
  //       Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceAround,
  //         crossAxisAlignment: CrossAxisAlignment.center,
  //         children: [
  //           Card(
  //             child: GestureDetector(
  //               onTap: () {
  //                 setState(() {
  //                   sellectedIndex = currentIndex;
  //                 });
  //               },
  //               child: Container(
  //                 decoration: BoxDecoration(
  //                     color: sellectedIndex == index
  //                         ? Colors.purple
  //                         : Colors.white,
  //                     borderRadius: BorderRadius.circular(10)),
  //                 child: Column(
  //                   mainAxisAlignment: MainAxisAlignment.center,
  //                   children: const [
  //                     Icon(
  //                       CupertinoIcons.house_alt,
  //                       size: 45,
  //                     ),
  //                     Text(
  //                       "House",
  //                       style: TextStyle(fontSize: 20),
  //                     )
  //                   ],
  //                 ),
  //                 height: 120,
  //                 width: 120,
  //               ),
  //             ),
  //           ),
  //           Card(
  //             child: GestureDetector(
  //               onTap: () {
  //                 setState(() {
  //                   sellectedIndex = currentIndex;
  //                 });
  //               },
  //               child: Container(
  //                 decoration: BoxDecoration(
  //                     color: sellectedIndex == index
  //                         ? Colors.purple
  //                         : Colors.white,
  //                     borderRadius: BorderRadius.circular(10)),
  //                 child: Column(
  //                   mainAxisAlignment: MainAxisAlignment.center,
  //                   children: const [
  //                     Icon(
  //                       CupertinoIcons.house_alt,
  //                       size: 45,
  //                     ),
  //                     Text(
  //                       "House",
  //                       style: TextStyle(fontSize: 20),
  //                     )
  //                   ],
  //                 ),
  //                 height: 120,
  //                 width: 120,
  //               ),
  //             ),
  //           ),
  //           Container(
  //             decoration: BoxDecoration(
  //                 color: Colors.grey.shade300,
  //                 borderRadius: BorderRadius.circular(10)),
  //             child: Column(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               children: const [
  //                 Icon(
  //                   CupertinoIcons.building_2_fill,
  //                   size: 45,
  //                 ),
  //                 Text(
  //                   "Hotel",
  //                   style: TextStyle(fontSize: 20),
  //                 )
  //               ],
  //             ),
  //             height: 120,
  //             width: 120,
  //           ),
  //         ],
  //       ),
  //       Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceAround,
  //         crossAxisAlignment: CrossAxisAlignment.center,
  //         children: [
  //           Card(
  //             child: Container(
  //               decoration:
  //                   BoxDecoration(borderRadius: BorderRadius.circular(10)),
  //               child: Column(
  //                 mainAxisAlignment: MainAxisAlignment.center,
  //                 children: const [
  //                   Icon(
  //                     CupertinoIcons.house_alt,
  //                     size: 45,
  //                   ),
  //                   Text(
  //                     "House",
  //                     style: TextStyle(fontSize: 20),
  //                   )
  //                 ],
  //               ),
  //               height: 120,
  //               width: 120,
  //             ),
  //           ),
  //           Container(
  //             decoration: BoxDecoration(
  //                 color: Colors.grey.shade300,
  //                 borderRadius: BorderRadius.circular(10)),
  //             child: Column(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               children: const [
  //                 Icon(
  //                   CupertinoIcons.building_2_fill,
  //                   size: 45,
  //                 ),
  //                 Text(
  //                   "Hotel",
  //                   style: TextStyle(fontSize: 20),
  //                 )
  //               ],
  //             ),
  //             height: 120,
  //             width: 120,
  //           ),
  //           Card(
  //             child: Container(
  //               decoration:
  //                   BoxDecoration(borderRadius: BorderRadius.circular(10)),
  //               child: Column(
  //                 mainAxisAlignment: MainAxisAlignment.center,
  //                 children: const [
  //                   Icon(
  //                     CupertinoIcons.house_alt,
  //                     size: 45,
  //                   ),
  //                   Text(
  //                     "House",
  //                     style: TextStyle(fontSize: 20),
  //                   )
  //                 ],
  //               ),
  //               height: 120,
  //               width: 120,
  //             ),
  //           ),
  //         ],
  //       ),
  //     ],
  //   );
  // }

  Container buildContainer(Im e) => Container(
        margin: EdgeInsets.all(5),
        height: 150,
        width: 110,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(e.image!))),
      );
}
