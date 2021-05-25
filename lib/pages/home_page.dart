import 'package:daily_quotes/blocs/phrases_bloc.dart';
import 'package:daily_quotes/widgets/transparent_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedFont = 'DellaRespira';
  String selectedPhrase = 'inspirational';

  PhrasesBloc bloc = PhrasesBloc();

  @override
  void initState() {
    super.initState();
    bloc.getPhrases();
  }

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
            radius: 1.8,
          ),
        ),
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: StreamBuilder(
                  stream: bloc.phrasesStream,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Padding(
                        padding: EdgeInsets.all(24.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '"${snapshot.data[selectedPhrase].quote}"',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: selectedFont,
                                color: Color(0xCCFFFFFF),
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              '${snapshot.data[selectedPhrase].author}',
                              style: TextStyle(
                                fontFamily: selectedFont,
                                color: Color(0xCCFFFFFF),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                    return Container();
                  }),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TransparentButton(
                      onTap: () {
                        selectedPhrase = 'insult';
                        selectedFont = 'BubblerOne';
                        setState(() {});
                      },
                      text: 'Insult',
                    ),
                    TransparentButton(
                      onTap: () {
                        selectedPhrase = 'inspirational';
                        selectedFont = 'DellaRespira';
                        setState(() {});
                      },
                      text: 'Inspirational',
                    ),
                    TransparentButton(
                      onTap: () {
                        selectedPhrase = 'kanye';
                        selectedFont = 'Metamorphous';
                        setState(() {});
                      },
                      text: 'Kanye West',
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
