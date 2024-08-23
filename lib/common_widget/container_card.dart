import 'package:flutter/material.dart';

class ContainerCard extends StatelessWidget {
  final Color color;
  final String label;
  final String number;
  const ContainerCard(
      {super.key,
      required this.color,
      required this.label,
      required this.number});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 100,
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: color),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            Text(
              number,
              style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

class ContainerListCard {
  String label;
  String subLabel;
  int number;
  Color color;
  Image image;

  ContainerListCard({
    required this.color,
    required this.image,
    required this.label,
    required this.subLabel,
    required this.number,
  });
}

List<ContainerListCard> votingList = [
  ContainerListCard(
    color: Color(0xffA1D2F5),
    image: Image.asset('images/profile2.png'),
    label: 'Chester Cheng',
    subLabel: '196 Votes',
    number: 35,
  ),
  ContainerListCard(
    color: Color(0xffA1F5D3),
    image: Image.asset('images/profile3.png'),
    label: 'Robert Soliman',
    subLabel: '56 Votes',
    number: 10,
  ),
  ContainerListCard(
    color: Color(0xffBBF5A1),
    image: Image.asset('images/profile4.png'),
    label: 'Kristine Lim',
    subLabel: '28 Votes',
    number: 5,
  )
];
