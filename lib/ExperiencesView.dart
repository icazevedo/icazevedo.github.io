import 'package:flutter/material.dart';

import 'HoverPointer.dart';

class ExperiencesView extends StatefulWidget {
  ExperiencesView({Key key}) : super(key: key);

  @override
  _ExperiencesViewState createState() => _ExperiencesViewState();
}

class _ExperiencesViewState extends State<ExperiencesView> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                top: 15,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 25,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ExperienceNavigationItem(
                          image: "images/smartmetropolis_icon.png",
                          title: "Smart Metropolis",
                          selected: selected == 0,
                          onTap: () => setState(() {
                            selected = 0;
                          }),
                        ),
                        ExperienceNavigationItem(
                          image: "images/smartmetropolis_icon.png",
                          title: "Smart Retail",
                          selected: selected == 1,
                          onTap: () => setState(() {
                            selected = 1;
                          }),
                        ),
                        ExperienceNavigationItem(
                          image: "images/smartmetropolis_icon.png",
                          title: "CCSL",
                          selected: selected == 2,
                          onTap: () => setState(() {
                            selected = 2;
                          }),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Expanded(flex: 1, child: Container()),
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: 1,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: <Color>[
                                Color(0xffc8b273).withOpacity(0.05),
                                Color(0xffc8b273),
                                Color(0xffc8b273),
                                Color(0xffc8b273).withOpacity(0.05),
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              stops: <double>[
                                0.0,
                                0.3,
                                0.7,
                                1,
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(flex: 1, child: Container()),
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        children: [
                          Container(
                            width: 400,
                            height: double.infinity,
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  left: 1,
                                  right: 1,
                                  top: 0,
                                  bottom: 0,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 398,
                                    child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      controller:
                                          PageController(viewportFraction: 0.6),
                                      physics: PageScrollPhysics(),
                                      children: <Widget>[
                                        Container(
                                          alignment: Alignment.center,
                                          width: (398 / 10) * 2,
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          width: (398 / 10) * 5,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                'images/campusseguro/1.png',
                                              ),
                                              fit: BoxFit.fitWidth,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          width: (398 / 10) * 1,
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          width: (398 / 10) * 5,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                'images/campusseguro/2.png',
                                              ),
                                              fit: BoxFit.fitWidth,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          width: (398 / 10) * 1,
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          width: (398 / 10) * 5,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                'images/campusseguro/3.png',
                                              ),
                                              fit: BoxFit.fitWidth,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          width: (398 / 10) * 1,
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          width: (398 / 10) * 5,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                'images/campusseguro/4.png',
                                              ),
                                              fit: BoxFit.fitWidth,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          width: (398 / 10) * 1,
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          width: (398 / 10) * 5,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                'images/campusseguro/5.png',
                                              ),
                                              fit: BoxFit.fitWidth,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          width: (398 / 10) * 1,
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          width: (398 / 10) * 5,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                'images/campusseguro/6.png',
                                              ),
                                              fit: BoxFit.fitWidth,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          width: (398 / 10) * 1,
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          width: (398 / 10) * 5,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                'images/campusseguro/7.png',
                                              ),
                                              fit: BoxFit.fitWidth,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          width: (398 / 10) * 1,
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          width: (398 / 10) * 5,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                'images/campusseguro/8.png',
                                              ),
                                              fit: BoxFit.fitWidth,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          width: (398 / 10) * 2,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  bottom: 0,
                                  child: Container(
                                    width: 75,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        stops: [0, 1],
                                        colors: [
                                          Color(0xff132032),
                                          Color(0xff132032).withOpacity(0.0),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 0,
                                  top: 0,
                                  bottom: 0,
                                  child: Container(
                                    width: 75,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        stops: [0, 1],
                                        colors: [
                                          Color(0xff132032).withOpacity(0.0),
                                          Color(0xff132032),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
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

class ExperienceNavigationItem extends StatefulWidget {
  final String image;
  final String title;
  final bool selected;
  final Function onTap;

  const ExperienceNavigationItem({
    Key key,
    @required this.image,
    @required this.title,
    @required this.onTap,
    this.selected: false,
  }) : super(key: key);

  @override
  _ExperienceNavigationItemState createState() =>
      _ExperienceNavigationItemState();
}

class _ExperienceNavigationItemState extends State<ExperienceNavigationItem> {
  Color highlightColor = Color(0xffc8b273).withOpacity(0.4);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.widget.onTap,
      child: HoverPointer(
        onHover: () => setState(() {
          highlightColor = Color(0xffc8b273).withOpacity(0.7);
        }),
        onExit: () => setState(() {
          highlightColor = Color(0xffc8b273).withOpacity(0.4);
        }),
        child: AnimatedContainer(
          // color: Color(0xffc8b273).withOpacity(1),
          duration: Duration(milliseconds: 100),
          width: 100,
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              AnimatedContainer(
                duration: Duration(milliseconds: 100),
                height: 40,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(this.widget.image),
                    colorFilter: ColorFilter.mode(
                      this.widget.selected ? Color(0xffc8b273) : highlightColor,
                      BlendMode.srcIn,
                    ),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              AnimatedDefaultTextStyle(
                duration: Duration(milliseconds: 100),
                style: Theme.of(context).textTheme.bodyText2.copyWith(
                      color: this.widget.selected
                          ? Color(0xffc8b273)
                          : highlightColor,
                      fontSize: 12,
                    ),
                child: Text(
                  this.widget.title,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
