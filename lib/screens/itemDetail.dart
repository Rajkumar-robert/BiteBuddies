import 'package:flutter/material.dart';

class itemDetail extends StatefulWidget {
  const itemDetail({super.key});

  @override
  State<itemDetail> createState() => _itemDetailState();
}

class _itemDetailState extends State<itemDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          child: Column(children: [
            Container(
              child: Image(image: NetworkImage("")),
            ),

            Container(
              child: Text("Food name"),
              
            ),
            Container(
              child: Text("star") ,
            )

          ]),
        )
      ]),
    );
  }
}