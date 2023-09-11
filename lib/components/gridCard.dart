import 'package:flutter/material.dart';

class gridCard extends StatefulWidget {
  const gridCard({super.key});

  @override
  State<gridCard> createState() => _gridCardState();
}

class _gridCardState extends State<gridCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    childAspectRatio: 2 / 2.8,
                  ),
                  itemBuilder: (context, index) {
                    return BuildGrid
                  },
      )
    );
  }
}