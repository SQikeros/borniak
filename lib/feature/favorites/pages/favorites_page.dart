import 'package:borniak/feature/explore/pages/recommended_page.dart';
import 'package:borniak/feature/meals/widgets/meals_card.dart';
import 'package:borniak/feature/product/widgets/catalog_products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  FavoritesPageBody createState() => FavoritesPageBody();
}

class FavoritesPageBody extends State<FavoritesPage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text('Ulubione'),
          bottom: const TabBar(
            indicatorWeight: 5,
            indicatorColor: Colors.teal,
            labelColor: Colors.teal,
            unselectedLabelColor: Colors.black,
            tabs: [
              Tab(
                child: Text('Przepisy'),
              ),
              Tab(
                child: Text('Produkty'),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CustomScrollView(
              slivers: [
                SliverToBoxAdapter(child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: SecondMealsCard(),
                ),)
              ],
            ),
            Column(
              children: [
                CatalogProducts()
              ],
            )
          ],
        ),
      ),
    );
  }
}
