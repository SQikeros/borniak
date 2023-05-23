import 'package:flutter/material.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: Column(
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Sposób przygotowania', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Do małego rondelka wkładamy przyprawy, zalewamy małą ilością wody. Gotujemy przez chwilę by powstał wywar, następnie schładzamy. Do garnka wlewamy wodę, dodajemy sól i cukier dokładnie mieszamy do całkowitego rozpuszczenia. Następnie dodajmy zimny wywar i jeszcze raz dokładnie mieszamy. Kurczaka oczyszczamy, myjemy, osuszamy i układamy na desce. Mięso nakłuwamy w różnych miejscach. Do środka wkładamy wyparzony słoik z wodą (dzięki temu kurczak nie wypłynie nam na wierzch). Tak przygotowanego wkładamy do garnka i zalewamy solanką.Odstawiamy w chłodne miejsce na dwa, trzy dni. W trakcie peklowania obracany kurczaka dwa razy w ciągu dnia. Do garnka wlewamy wodę, podgrzewamy do 80°C, wkładamy kurczaka i parzymy około jedną godzinę w 70°C. Wyjmujemy, zawieszamy na haku i wieszamy w wędzarni. Za pomocą osuszacza około 2-3 godziny osuszamy. W szafie wędzarniczej ustawiamy temperaturę około 50-60°C i wędzimy około 3-4 godziny.  Smarujemy kurczaka olejem i podnosimy temperaturę do 90°C. Wędzimy do czasu, aż nabierze koloru, a mięso osiągnie w środku 80°C.',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}