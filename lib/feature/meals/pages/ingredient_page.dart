import 'package:flutter/material.dart';

class IngredientPage extends StatefulWidget {
  const IngredientPage({super.key});

  @override
  _IngredientPageState createState() => _IngredientPageState();
}

class _IngredientPageState extends State<IngredientPage> {

  bool click1 = true;
  bool click2 = true;
  bool click3 = true;
  bool click4 = true;
  bool click5 = true;


  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 300,
            child: ListView(
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                ListTile(
                  leading: CircleAvatar(
                    radius: 28,
                    child: Icon(Icons.add_task),
                  ),
                  title: Text('Poziom trudności'),
                  subtitle: Text('łatwy'),
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 28,
                    child: Icon(Icons.access_alarms),
                  ),
                  title: Text('Czas przygotowania'),
                  subtitle: Text('2-3h'),
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 28,
                    child: Icon(Icons.alarm_on_rounded),
                  ),
                  title: Text('Czas wędzenia'),
                  subtitle: Text('3-4h'),
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            height: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: ListView(
              physics: const NeverScrollableScrollPhysics(),
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Składniki',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                ListTile(
                  title: const Text('1 kurczak, okolo 2 kg'),
                  leading: ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      overlayColor: MaterialStatePropertyAll(Colors.white),
                      elevation: MaterialStatePropertyAll(0),
                    ),
                    onPressed: () {
                      setState(() {
                        click1 = !click1 ;
                      });
                    },
                    child: Icon((click1 == true) ? Icons.circle_outlined : Icons.check_circle_outline),
                  ),
                ),
                ListTile(
                  leading: ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      overlayColor: MaterialStatePropertyAll(Colors.white),
                      elevation: MaterialStatePropertyAll(0),
                    ),
                    onPressed: () {
                      setState(() {
                        click2 = !click2 ;
                      });
                    },
                    child: Icon((click2 == true) ? Icons.circle_outlined : Icons.check_circle_outline),
                  ),
                  title: const Text('2l zimnej wody'),
                ),
                ListTile(
                  leading: ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      overlayColor: MaterialStatePropertyAll(Colors.white),
                      elevation: MaterialStatePropertyAll(0),
                    ),
                    onPressed: () {
                      setState(() {
                        click3 = !click3 ;
                      });
                    },
                    child: Icon((click3 == true) ? Icons.circle_outlined : Icons.check_circle_outline),
                  ),
                  title: const Text('1/2 szklanki peklującej'),
                ),
                ListTile(
                  leading: ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      overlayColor: MaterialStatePropertyAll(Colors.white),
                      elevation: MaterialStatePropertyAll(0),
                    ),
                    onPressed: () {
                      setState(() {
                        click4 = !click4 ;
                      });
                    },
                    child: Icon((click4 == true) ? Icons.circle_outlined : Icons.check_circle_outline),
                  ),
                  title: const Text('1/2 szklanki soli'),
                ),
                ListTile(
                  leading: ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      overlayColor: MaterialStatePropertyAll(Colors.white),
                      elevation: MaterialStatePropertyAll(0),
                    ),
                    onPressed: () {
                      setState(() {
                        click5 = !click5 ;
                      });
                    },
                    child: Icon((click5 == true) ? Icons.circle_outlined : Icons.check_circle_outline),
                  ),
                  title: const Text('1/3 szklanki cukru brązowego'),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
