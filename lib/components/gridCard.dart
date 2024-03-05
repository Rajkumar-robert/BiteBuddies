import 'package:bitebuddies/screens/itemDetail.dart';
import 'package:flutter/material.dart';

class gridCard extends StatefulWidget {
  const gridCard({super.key});

  @override
  State<gridCard> createState() => _gridCardState();
}

class _gridCardState extends State<gridCard> {
  final List items = [];
  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        childAspectRatio: 2 / 2.8,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return buildGrid(items[index]);
      },
    ));
  }

  Widget buildGrid(item) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => itemDetail(),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Color.fromARGB(255, 0, 0, 0)),borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
           Container(
              height: 200,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
                child: book.imageURL != null
                    ? Image.network(
                        book.imageURL,
                        fit: BoxFit.cover,
                      )
                    : Container(),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5.0), 
              child: Text(
                book.title,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center, 
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class filter extends StatefulWidget {
  const filter({super.key});

  @override
  State<filter> createState() => _filterState();
}

class _filterState extends State<filter> {
  final List<String> categories = [
    'All',
    'Snacks',
    'Bevarages',
    'Drinks',
    'Breakfast',
    'Icecreams',
    'Lunch',
    'Desserts',
  ];

  int SelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            final category = categories[index];

            return GestureDetector(
              onTap: () {
                setState(() {
                  SelectedIndex = index;
                });
              },
              child: Container(
                alignment: Alignment.center,
                
                child: Text(category)
              ),
            );
          }),
    );
  }
}
