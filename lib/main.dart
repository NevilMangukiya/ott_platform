import 'package:flutter/material.dart';
import 'Screens.dart';
import 'global.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomePage(),
        'options': (context) => Options(),
      },
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OTT App"),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      // backgroundColor: Colors.black,
      body: Container(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
              children: ott
                  .map((e) => GestureDetector(
                        onTap: () {
                          Web = e;
                          Navigator.of(context).pushNamed("options");
                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Container(
                                padding: EdgeInsets.all(25),
                                height: 200,
                                width: 400,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        offset: const Offset(
                                          1.0,
                                          1.0,
                                        ),
                                        blurRadius: 10.0,
                                        spreadRadius: 5.0,
                                      ), //BoxShadowBoxShadow
                                    ],
                                    borderRadius: BorderRadius.circular(18),
                                    image: DecorationImage(
                                      image: NetworkImage(e.image),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ))
                  .toList()),
        ),
      ),
    );
  }
}
