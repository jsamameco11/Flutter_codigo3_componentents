import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codigo3_components/alert_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1D2025),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Image.network(
                  "https://ih1.redbubble.net/image.622748019.0162/pp,504x498-pad,600x600,f8f8f8.u1.jpg",
                  width: 230,
                ),
                Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    "Componentes",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      letterSpacing: 1.7,
                    ),
                  ),
                ),
                ItemListWidget(
                  title: "Alertas",
                  subtitle: "Módulo de alertas",
                  icon: Icons.notifications,
                  toWidget: AlertPage(),
                ),
                ItemListWidget(
                  title: "Avatares",
                  subtitle: "Módulo de avatares",
                  icon: Icons.person,
                  toWidget: AlertPage(),
                ),
                ItemListWidget(
                  title: "Cards",
                  subtitle: "Módulo de cards",
                  icon: Icons.picture_in_picture,
                  toWidget: AlertPage(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ItemListWidget extends StatelessWidget {
  String title;
  String subtitle;
  IconData icon;
  Widget toWidget;

  ItemListWidget(
      {required this.title,
      required this.subtitle,
      required this.icon,
      required this.toWidget});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Color(0xff33353d),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => this.toWidget));
        },
        title: Text(
          this.title,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        leading: Icon(
          Icons.notification_important,
          color: Colors.white,
        ),
        subtitle: Text(
          this.subtitle,
          style: TextStyle(color: Colors.white),
        ),
        trailing: Icon(
          this.icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
