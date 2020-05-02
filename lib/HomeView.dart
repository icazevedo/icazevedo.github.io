
import 'package:flutter/material.dart';
import 'package:portfolio/HideOverscrollBehavior.dart';

class HomeView extends StatefulWidget {
  const HomeView({
    Key key,
  }) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50),
      child: Row(
        children: [
          Expanded(
            flex: 9,
            child: ScrollConfiguration(
              behavior: HideOverscrollBehavior(),
              child: ListView(
                controller: scrollController,
                children: [
                  Text(
                    "Ícaro Azevedo",
                    style: TextStyle(
                      color: Color(0xffc8b273),
                      fontSize: 44,
                    ),
                  ),
                  Text(
                    "Desenvolvedor de Software - Back End, Front End, Mobile",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: AcademicExperienceItem(
                          icon: Icons.school,
                          title: "Técnico em Informática",
                          description:
                              "Instituto Federal de Educação, Ciência e Tecnologia do Rio Grande do Norte",
                        ),
                      ),
                      Expanded(
                        child: AcademicExperienceItem(
                          icon: Icons.account_balance,
                          title: "Graduando em TI",
                          description:
                              "Universidade Federal do Rio Grande do Norte",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(),
          ),
          Expanded(
            flex: 5,
            child: Align(
              alignment: Alignment.topCenter,
              child: AspectRatio(
                aspectRatio: 3 / 4,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'images/foto-perfil.jpg',
                      ),
                      fit: BoxFit.cover,
                      alignment: Alignment(0.7, -1),
                      scale: 1.5,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



class AcademicExperienceItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const AcademicExperienceItem({
    Key key,
    @required this.icon,
    @required this.title,
    @required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          this.icon,
          color: Color(0xffc8b273),
          size: 48,
        ),
        SizedBox(
          width: 15,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                this.title,
                style: TextStyle(
                  color: Color(0xffc8b273),
                  fontSize: 16,
                ),
              ),
              Text(
                this.description,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
