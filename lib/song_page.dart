import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:potify/neu_box.dart';

class SongPage extends StatefulWidget {
  const SongPage({Key? key}) : super(key: key);

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 60,
                        width: 60,
                        child: NeuBox(child: Icon(Icons.arrow_back)),
                      ),
                      Text('P L A Y L I S T'),
                      SizedBox(
                        height: 60,
                        width: 60,
                        child: NeuBox(child: Icon(Icons.menu)),
                      ),
                    ],
                  ),
                  SizedBox(height: 25.0),

                  NeuBox(
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset('images/cover_art.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Kota The Friend',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0,
                                        color: Colors.grey.shade700
                                    ),
                                  ),
                                  SizedBox(height: 6.0),
                                  Text('Birdie',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0
                                    ),
                                  ),
                                ],
                              ),
                              Icon(Icons.favorite,color: Colors.red,size: 32.0,),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 25.0),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('0:00'),
                      Icon(Icons.shuffle),
                      Icon(Icons.repeat),
                      Text('4:22'),
                    ],
                  ),

                  SizedBox(height: 25.0),

                  NeuBox(
                    child: LinearPercentIndicator(
                      lineHeight: 10.0,
                      percent: 0.6,
                      progressColor: Colors.green,
                      backgroundColor: Colors.transparent,
                    ),
                  ),

                  SizedBox(height: 25.0),

                  SizedBox(
                    height: 80.0,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: NeuBox(
                            child: Icon(Icons.skip_previous,size: 32,),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: NeuBox(
                              child: Icon(Icons.play_arrow,size: 32,),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: NeuBox(
                            child: Icon(Icons.skip_next,size: 32,),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
