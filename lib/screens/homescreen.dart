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
              Icon(
                Icons.menu,
                size: 30,
                color: Colors.black,
              ),
              Expanded(child: Container()),
              Container(
                margin: const EdgeInsets.only(right: 20),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage("img/profil/profilpic.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
            ]),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: AppLargeText(text: 'Discover'),
          ),
          SizedBox(
            height: 20,
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
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: CircleTabIndicator(color: Colors.black, radius: 4),
                  tabs: [
                    Tab(text: "Beginner"),
                    Tab(text: "Intermediate"),
                    Tab(text: "Advanced"),
                  ]),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
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
          SizedBox(
            height: 50,
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
          SizedBox(height: 30),
          Container(
            height: 150,
            width: double.maxFinite,
            margin: const EdgeInsets.only(left: 20),
            child: ListView.builder(
                itemCount: 2,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 30),
                    child: Column(
                      children: [
                        Container(
                          // margin: const EdgeInsets.only(right: 50),
                          width: 250,
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

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;
  CircleTabIndicator({required this.color, required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;
  _CirclePainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
        configuration.size!.width / 2 - radius / 2,
        configuration.size!.height - radius);

    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }
}
