import 'common_widget/container_card.dart';
import 'package:flutter/material.dart';

import 'common_widget/event_card.dart';

class DesignPage extends StatelessWidget {
  const DesignPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    'images/image.png',
                    fit: BoxFit.fill,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 20,
                  ),
                  child: Text(
                    'Live Vote Results',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'Winner Contestant',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffF8B64C)),
                  ),
                ),
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 114,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xffF5A1A1)),
                      margin: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 15,
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 20, right: 30),
                            child: Image.asset('images/profile1.png'),
                          ),
                          const Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(right: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Omar D. Regalado',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('Lorem ipsum loremipsum',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500))
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                        top: 0,
                        right: 10,
                        child: Image.asset('images/medal 1.png')),
                  ],
                ),
                const Row(
                  children: [
                    ContainerCard(
                        color: Color(0xff0497FF),
                        label: 'Total Votes',
                        number: '560'),
                    ContainerCard(
                        color: Color(0xff7CADBF),
                        label: 'Total Votes',
                        number: '50%')
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 35.0, right: 35, bottom: 10),
                  child: Text(
                    'Others Contestant',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 92.0 * votingList.length,
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        height: 70,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 35, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: votingList[index].color,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 5,
                                child: Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.only(
                                          left: 20, right: 20),
                                      child: votingList[index].image,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            votingList[index].label,
                                            style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(votingList[index].subLabel,
                                              style: const TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500))
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Text(
                                  '${votingList[index].number}%',
                                  style: const TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: votingList.length,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 35.0, right: 35, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Contest Videos',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: InkWell(
                          onTap: () {},
                          hoverColor: Colors.blue,
                          child: const Text(
                            'https://www.youtube.com/watch?v=aLtXzKyNxkY',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // video link
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'Upcoming Events',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                EventCard(
                  image: Image.asset('images/music.png'),
                  label: 'Music Festivals',
                  subLabel: 'Date : 30/09/2024',
                  icon: const Icon(
                    Icons.arrow_circle_right,
                    size: 40,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                EventCard(
                  image: Image.asset('images/sport.png'),
                  label: 'Sports Events',
                  subLabel: 'Date : 30/09/2024',
                  icon: const Icon(
                    Icons.arrow_circle_right,
                    size: 40,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
