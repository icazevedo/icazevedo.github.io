import 'package:flutter/material.dart';
import 'package:portfolio/HoverPointer.dart';

class MainNavigationBar extends StatefulWidget {
  MainNavigationBar({Key key, this.onChange}) : super(key: key);

  final ValueChanged<int> onChange;

  @override
  _MainNavigationBarState createState() => _MainNavigationBarState();
}

class _MainNavigationBarState extends State<MainNavigationBar> {
  int selected = 0;

  void setSelected(int newSelected) {
    setState(() {
      selected = newSelected;
    });

    if (widget.onChange != null) {
      widget.onChange(newSelected);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      child: Material(
        elevation: 3,
        color: Color(0xffc8b273),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              MainNavigationItem(
                icon: Icons.school,
                title: "Início",
                selected: selected == 0,
                onTap: () => setSelected(0),
              ),
              MainNavigationItem(
                icon: Icons.account_balance,
                title: "Experiência",
                selected: selected == 1,
                onTap: () => setSelected(1),
              ),
            ],
          ),
        ),
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
          backgroundColor = Color(0xff132032).withOpacity(0.3);
        }),
        onExit: () => setState(() {
          backgroundColor = Colors.transparent;
        }),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 100),
          padding: EdgeInsets.symmetric(
            vertical: 15,
          ),
          color: this.widget.selected ? Color(0xff132032) : backgroundColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                this.widget.icon,
                color: !this.widget.selected
                    ? Color(0xff132032)
                    : Color(0xffc8b273),
              ),
              Text(
                this.widget.title,
                style: TextStyle(
                  color: !this.widget.selected
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
