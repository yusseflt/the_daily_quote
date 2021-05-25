import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedFont = 'DellaRespira';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [
              Color(0xFF0F2027),
              Color(0xFF203A43),
              Color(0xFF2C5364),
            ],
            radius: 1.2,
          ),
        ),
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '"You must do the thing you think you cannot do."',
                      style: TextStyle(
                        fontFamily: selectedFont,
                        color: Color(0xCCFFFFFF),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Eleanor Roosevelt.',
                      style: TextStyle(
                        fontFamily: 'DellaRespira',
                        color: Color(0xCCFFFFFF),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: InkWell(
                        onTap: () {
                          print('Insult');
                        },
                        child: Container(
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          padding: EdgeInsets.all(8),
                          child: Text(
                            'Insult',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: selectedFont,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: InkWell(
                        onTap: () {
                          print('Inspirational');
                        },
                        child: Container(
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          padding: EdgeInsets.all(8),
                          child: Text(
                            'Inspirational',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: selectedFont,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: InkWell(
                        onTap: () {
                          print('Kanye West');
                        },
                        child: Container(
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          padding: EdgeInsets.all(8),
                          child: Text(
                            'Kanye West',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: selectedFont,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
