import 'package:borniak/feature/explore/pages/for_you_page.dart';
import 'package:borniak/feature/explore/pages/recommended_page.dart';
import 'package:borniak/feature/home/pages/home_page.dart';
import 'package:borniak/feature/meals/widgets/meals_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  ExplorePageBody createState() => ExplorePageBody();
}

class ExplorePageBody extends State<ExplorePage> with TickerProviderStateMixin {


  TabBarView _buildTabBarView() {
    return const TabBarView(
      children: [
        RecommendedPage(),
        ForYouPage(),
      ],
    );
  }

  TabBar _buildTabBar() {
    return const TabBar(
      indicatorWeight: 5,
      indicatorColor: Colors.teal,
      labelColor: Colors.teal,
      unselectedLabelColor: Colors.black,
      tabs: [
        Tab(
          child: Text('Polecane'),
        ),
        Tab(
          child: Text('Dla Ciebie'),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (_, __) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Colors.white,
                pinned: true,
                floating: true,
                snap: true,
                expandedHeight: 250,
                bottom: _buildTabBar(),
                flexibleSpace: const FlexibleSpaceBar(
                  background: BorniakBanner(),
                ),
              ),
            ];
          },
          body: _buildTabBarView(),
        ),
      ),
    );
  }
}

class BorniakBanner extends StatelessWidget {
  const BorniakBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Colors.teal,
              Color(0xFFE1BFE1),
            ],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(1.0, 1.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: Row(
        children: [
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 24),
                const Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Text(
                    "Zaproś znajomych",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  "i razem skosztujcie wędzonej potrawy!",
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        const MaterialStatePropertyAll<Color>(Colors.white),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    shadowColor: MaterialStateProperty.all(Colors.black),
                    overlayColor: MaterialStateProperty.all(Colors.teal.shade100),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.person_add_alt_outlined),
                      SizedBox(width: 12),
                      Text("Zaproś znajomych"),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              'assets/logo_borniak.svg',
              width: MediaQuery.of(context).size.width / 3,
            ),
          ),
        ],
      ),
    );
  }
}
