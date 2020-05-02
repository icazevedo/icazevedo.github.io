import 'package:flutter/material.dart';
import 'package:portfolio/HoverPointer.dart';

class MainNavigationBar extends StatefulWidget {
  MainNavigationBar({Key key}) : super(key: key);

  @override
  _MainNavigationBarState createState() => _MainNavigationBarState();
}

class _MainNavigationBarState extends State<MainNavigationBar> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      child: Stack(
        children: [
          Container(
            width: 90,
            color: Color(0xff132032),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MainNavigationItem(
                  icon: Icons.school,
                  title: "Início",
                  selected: selected == 0,
                  onTap: () => {
                    setState(() {
                      selected = 0;
                    }),
                  },
                ),
                MainNavigationItem(
                  icon: Icons.account_balance,
                  title: "Experiência",
                  selected: selected == 1,
                  onTap: () => {
                    setState(() {
                      selected = 1;
                    }),
                  },
                ),
              ],
            ),
          ),
          Container(
            color: Color(0xff132032),
            height: double.infinity,
          ),
        ],
      ),
    );
  }
}

class MainNavigationItem extends StatefulWidget {
  final IconData icon;
  final String title;
  final bool selected;
  final Function onTap;

  const MainNavigationItem({
    Key key,
    @required this.icon,
    @required this.title,
    @required this.onTap,
    this.selected: false,
  })  : assert(icon != null, title != null),
        super(key: key);

  @override
  _MainNavigationItemState createState() => _MainNavigationItemState();
}

class _MainNavigationItemState extends State<MainNavigationItem> {
  Color backgroundColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.widget.onTap,
      child: HoverPointer(
        onHover: () => setState(() {
          backgroundColor = Color(0xffc8b273).withOpacity(0.1);
        }),
        onExit: () => setState(() {
          backgroundColor = Colors.transparent;
        }),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            vertical: 15,
          ),
          color: this.widget.selected ? Color(0xffc8b273) : backgroundColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                this.widget.icon,
                color: this.widget.selected
                    ? Color(0xff132032)
                    : Color(0xffc8b273),
              ),
              Text(
                this.widget.title,
                style: TextStyle(
                  color: this.widget.selected
                      ? Color(0xff132032)
                      : Color(0xffc8b273),
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
