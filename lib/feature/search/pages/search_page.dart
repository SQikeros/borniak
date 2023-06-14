import 'package:borniak/feature/product/widgets/catalog_products.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  SearchPageBody createState() => SearchPageBody();
}

class SearchPageBody extends State<SearchPage> {
  bool _isSearching = false;
  final TextEditingController _searchQueryController = TextEditingController();
  String dropdownValue = 'Dopasowanie';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: _isSearching
            ? TextField(
                controller: _searchQueryController,
                autofocus: true,
                decoration: const InputDecoration(
                  hintText: 'Wyszukaj...',
                  border: InputBorder.none,
                ),
              )
            : Text('Przepisy i Artykuły'),
        leading: _isSearching ? null : null,
        actions: _buildActions(),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        const MaterialStatePropertyAll<Color>(Colors.white),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    shadowColor: MaterialStateProperty.all(Colors.black),
                    overlayColor:
                        MaterialStateProperty.all(Colors.teal.shade100),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.filter_1),
                      SizedBox(width: 12),
                      Text(
                        "Filtry",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 4,
              ),
              Container(
                margin: EdgeInsets.all(8),
                width: 220,
                height: 40,
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.teal, width: 2),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    isExpanded: true,
                    iconSize: 24,
                    icon: Icon(
                      Icons.arrow_drop_down_circle_outlined,
                      color: Colors.teal,
                    ),
                    value: dropdownValue,
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                      // Tutaj dodaj kod przekierowania do odpowiedniej strony z wynikami wyszukiwania
                    },
                    items: const [
                      DropdownMenuItem<String>(
                        value: 'Dopasowanie',
                        child: Text(
                          'Dopasowanie',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      DropdownMenuItem<String>(
                        value: 'Najnowsze',
                        child: Text('Najnowsze',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                      ),
                      DropdownMenuItem<String>(
                        value: 'Czas przyg., najkrótszy',
                        child: Text('Czas przyg., najkrótszy',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                      ),
                      DropdownMenuItem<String>(
                        value: 'Nazwa',
                        child: Text('Nazwa',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                      ),
                      DropdownMenuItem<String>(
                        value: 'Najwyżej oceniane',
                        child: Text('Najwyżej oceniane',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          CatalogProducts(),
        ],
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      );

  List<Widget> _buildActions() {
    if (_isSearching) {
      return <Widget>[
        IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            setState(() {
              _searchQueryController.clear();
              _isSearching = false;
            });
          },
        ),
      ];
    } else {
      return <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            setState(() {
              _isSearching = true;
            });
          },
        ),
      ];
    }
  }
}
