import 'package:borniak/core/widgets/texts/texts.dart';
import 'package:borniak/feature/Explore/pages/explore_page.dart';
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
             SliverAppBar(
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
                 padding: EdgeInsets.all(16),
                 child: ClipRRect(
                   borderRadius: BorderRadius.circular(20),
                   child: Container(
                     height: 340,
                     color: Colors.teal.shade100,
                     child: ListView(
                       children: [
                         ListTile(
                           title: Text('Preferencje'),
                           trailing: Icon(Icons.arrow_forward_ios),
                           leading: Icon(Icons.room_preferences),
                           onTap: () {
                             Navigator.of(context).push(MaterialPageRoute(
                               builder: (context) => PrivacyPage(),
                             ));
                           },
                         ),
                         ListTile(
                           title: Text('Moje urządzenia'),
                           trailing: Icon(Icons.arrow_forward_ios),
                           leading: Icon(Icons.devices),
                           onTap: () {
                             Navigator.of(context).push(MaterialPageRoute(
                               builder: (context) => PrivacyPage(),
                             ));
                           },
                         ),
                         ListTile(
                           title: Text('Zakupione'),
                           trailing: Icon(Icons.arrow_forward_ios),
                           leading: Icon(Icons.sell),
                           onTap: () {
                             Navigator.of(context).push(MaterialPageRoute(
                               builder: (context) => PrivacyPage(),
                             ));
                           },
                         ),ListTile(
                           title: Text('Polityka prywatności'),
                           trailing: Icon(Icons.arrow_forward_ios),
                           leading: Icon(Icons.privacy_tip),
                           onTap: () {
                             Navigator.of(context).push(MaterialPageRoute(
                               builder: (context) => PrivacyPage(),
                             ));
                           },
                         ),
                         ListTile(
                           title: Text('Zmiana kraju i języka'),
                           trailing: Icon(Icons.arrow_forward_ios),
                           leading: Icon(Icons.language),
                           onTap: () {
                             Navigator.of(context).push(MaterialPageRoute(
                               builder: (context) => PrivacyPage(),
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
                top: 40,
                right: 16,
                child: Icon(Icons.edit)
            ),
            Positioned(
              top: 100,
              child: CircleAvatar(
                radius: 62,
                backgroundColor: Colors.teal,
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.teal.shade100,
                  child: Icon(Icons.add, size: 32, color: Colors.teal,),
                ),
              ),
            ),
            Positioned(
              top: 240,
              child: TitleLarge(
                'Dodaj swoję imię',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ],
    );
  }

}
