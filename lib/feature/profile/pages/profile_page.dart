import 'package:borniak/core/widgets/texts/texts.dart';
import 'package:borniak/feature/Explore/pages/explore_page.dart';
import 'package:borniak/feature/favorites/pages/favorites_page.dart';
import 'package:borniak/feature/map/pages/distributor_map.dart';
import 'package:borniak/feature/profile/pages/update_profile_page.dart';
import 'package:borniak/feature/settings/privacy_settings_page.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            expandedHeight: 250,
            pinned: false,
            floating: false,
            snap: false,
            flexibleSpace: FlexibleSpaceBar(
              background: ProfileView(),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 340,
                  color: Colors.teal.shade100,
                  child: ListView(
                    children: [
                      ListTile(
                        title: const Text('Preferencje'),
                        trailing: const Icon(Icons.arrow_forward_ios),
                        leading: const Icon(Icons.room_preferences),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const PrivacyPage(),
                          ));
                        },
                      ),
                      ListTile(
                        title: const Text('Mapa dystrybutorów'),
                        trailing: const Icon(Icons.arrow_forward_ios),
                        leading: const Icon(Icons.location_on_outlined),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => MapWithListScreen(),
                          ));
                        },
                      ),
                      ListTile(
                        title: const Text('Ulubione'),
                        trailing: const Icon(Icons.arrow_forward_ios),
                        leading: const Icon(Icons.favorite_border),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const FavoritesPage(),
                          ));
                        },
                      ),
                      ListTile(
                        title: const Text('Polityka prywatności'),
                        trailing: const Icon(Icons.arrow_forward_ios),
                        leading: const Icon(Icons.privacy_tip),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const PrivacyPage(),
                          ));
                        },
                      ),
                      ListTile(
                        title: const Text('Zmiana kraju i języka'),
                        trailing: const Icon(Icons.arrow_forward_ios),
                        leading: const Icon(Icons.language),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const PrivacyPage(),
                          ));
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Container(
              height: 276,
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
            ),
            Positioned(
                top: 32,
                right: 8,
                child: IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const UpdateProfilePage(),
                    ));
                  },
                )),
            Positioned(
              top: 100,
              child: CircleAvatar(
                radius: 62,
                backgroundColor: Colors.teal,
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.teal.shade100,
                  child: IconButton(
                    icon: const Icon(
                      Icons.add,
                      size: 32,
                      color: Colors.teal,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const UpdateProfilePage(),
                      ));
                    },
                  ),
                ),
              ),
            ),
            Positioned(
              top: 240,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const UpdateProfilePage(),
                  ));
                },
                child: const TitleLarge(
                  'Dodaj swoję imię',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
