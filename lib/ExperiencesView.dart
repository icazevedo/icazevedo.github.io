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
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 15,
            ),
            child: IntrinsicWidth(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 25,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
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
                    height: 20,
                  ),
                  Container(
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
          height: 45,
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Stack(
            alignment: Alignment.topCenter,
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
              Positioned(
                bottom: 0,
                child: AnimatedDefaultTextStyle(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
