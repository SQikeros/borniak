import 'package:borniak/feature/meals/pages/ingredient_page.dart';
import 'package:borniak/feature/meals/pages/recipe_page.dart';
import 'package:borniak/feature/product/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MealsPage extends StatelessWidget {
  final int index;

  const MealsPage({
    Key? key,
    required this.index,
  }) : super(key: key);

  TabBarView _buildTabBarView() {
    return const TabBarView(
      children: [
        IngredientPage(),
        RecipePage(),
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
          child: Text('Składniki'),
        ),
        Tab(
          child: Text('Przepis'),
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
                automaticallyImplyLeading: true,
                backgroundColor: Colors.white,
                expandedHeight: 363,
                pinned: false,
                floating: false,
                snap: false,
                flexibleSpace: FlexibleSpaceBar(
                  background: MealsView(index: index),
                ),
              ),
              SliverAppBar(
                expandedHeight: 160,
                pinned: true,
                floating: true,
                backgroundColor: Colors.white,
                automaticallyImplyLeading: false,
                bottom: _buildTabBar(),
                flexibleSpace: FlexibleSpaceBar(
                  background: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              Product.products[index].name,
                              style: const TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            const Icon(
                              Icons.favorite_border,
                              color: Colors.red,
                              size: 32,
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          'Tradycyjne wędzenie',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: RatingBar.builder(
                          initialRating: 4,
                          minRating: 1,
                          direction: Axis.horizontal,
                          itemCount: 5,
                          itemSize: 28,
                          itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.teal,
                          ),
                          onRatingUpdate: (index) {},
                        ),
                      ),
                    ],
                  ),
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

class MealsView extends StatelessWidget {
  final int index;

  const MealsView({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.zero,
          child: Image.asset(
            Product.products[index].imageUrl,
          ),
        ),
      ],
    );
  }
}
