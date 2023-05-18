import 'package:flutter/material.dart';

class InformationView extends StatelessWidget {
  const InformationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.check_circle_outline),
                      ),
                      Text('Certyfikat HACCP'),
                    ],
                  ),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.check_circle_outline),
                      ),
                      Text('Starannie wysuszono do 13% wilgotności'),
                    ],
                  ),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.check_circle_outline),
                      ),
                      Text('Odpylone dzięki procesowi technologicznemu'),
                    ],
                  ),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.check_circle_outline),
                      ),
                      Text('Wysokiej jakości zrębki do wędzarni'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

}