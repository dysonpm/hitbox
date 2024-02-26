import 'package:flutter/material.dart';
import 'package:hitbox_main/widgets/Text/app.text.dart';
import 'package:hitbox_main/widgets/Text/app_large_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  List images = [
    "card-box-basics-1.png",
    "card-box-basics-2.png",
  ];

  List imagesbasics = [
    "boxing-basics-1.png",
    "boxing-basics-2.png",
    "boxing-basics-3.png",
  ];

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 70,
              left: 20,
            ),
            child: Row(children: [
              Expanded(child: Container()),
              Container(
                margin: const EdgeInsets.only(right: 20),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                      image: AssetImage("img/profil/profilpic.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
            ]),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: AppLargeText(text: 'Good\nAfternoon'),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: AppLargeText(
              text: 'Sasuke Uchicha',
              color: Colors.red,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          // Tabbar
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                labelPadding: const EdgeInsets.only(left: 20, right: 20),
                controller: _tabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                isScrollable: true,
                indicatorColor: Colors.black,
                indicatorWeight: 5,
                // Dicke der Linie unter dem ausgewählten Tab
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  Tab(text: "Beginner"),
                  Tab(text: "Intermediate"),
                  Tab(text: "Advanced"),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              print("hallo");
            },
            child: Container(
              padding: const EdgeInsets.only(left: 20),
              height: 300,
              width: double.maxFinite,
              child: TabBarView(
                controller: _tabController,
                children: [
                  ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: const EdgeInsets.only(
                          right: 15,
                          top: 10,
                        ),
                        width: 200,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage("img/" + imagesbasics[index]),
                              fit: BoxFit.cover),
                        ),
                      );
                    },
                  ),
                  Text("2"),
                  Text("3"),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppLargeText(
                  text: 'Recommended for you',
                  size: 22,
                ),
                AppText(
                  text: 'See all',
                  color: Colors.grey,
                )
              ],
            ),
          ),
          SizedBox(height: 25),
          Container(
            height: 150,
            width: double.maxFinite,
            margin: const EdgeInsets.only(left: 20),
            child: ListView.builder(
                itemCount: 2,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 20),
                    child: Column(
                      children: [
                        Container(
                          // margin: const EdgeInsets.only(right: 50),
                          width: 270,
                          height: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              image: DecorationImage(
                                  image: AssetImage("img/" + images[index]),
                                  fit: BoxFit.cover)),
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
