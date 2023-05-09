import 'package:flutter/material.dart';

class PrivacyPage extends StatelessWidget{
  const PrivacyPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Ustawienia'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 100),
        alignment: Alignment.center,
        child: Row(
          children: [
            Icon(Icons.tag_faces_sharp),
            Text('Nic tu nie ma narazie'),
          ],
        ),
      ),
    );
  }

}