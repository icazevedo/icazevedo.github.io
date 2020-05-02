import 'package:flutter/material.dart';
import 'package:portfolio/ExperiencesView.dart';
import 'package:portfolio/HomeView.dart';
import 'package:portfolio/MainNavigationBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfólio',
      theme: ThemeData(
        platform: TargetPlatform.linux,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Jost'),
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff132032).withOpacity(0.95),
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
              // Expanded(
              //   flex: 1,
              //   child: Container(
              //     color: Colors.grey[700],
              //   ),
              // ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 50,
            ),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: double.infinity,
                minHeight: double.infinity,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(),
                  ),
                  Expanded(
                    flex: 8,
                    child: Card(
                      elevation: 5,
                      color: Color(0xff132032),
                      margin: EdgeInsets.all(0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            MainNavigationBar(
                              onChange: (page) => setState(() {
                                currentPage = page;
                              }),
                            ),
                            Expanded(
                              child: AnimatedSwitcher(
                                duration: Duration(milliseconds: 250),
                                child: currentPage == 0 ? HomeView() : ExperiencesView(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}