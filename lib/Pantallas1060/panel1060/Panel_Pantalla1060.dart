// ignore_for_file: camel_case_types, dead_code

import 'package:flutter/material.dart';
import 'package:uii_act1_1060/Pantallas1060/panel1060/widgets1060/item_music1060.dart';

class Panel_Pantalla1060 extends StatefulWidget {
  const Panel_Pantalla1060({Key? key}) : super(key: key);

  @override
  State<Panel_Pantalla1060> createState() => _Panel_Pantalla1060State();
}

class _Panel_Pantalla1060State extends State<Panel_Pantalla1060> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff084fea),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 25),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://w7.pngwing.com/pngs/244/695/png-transparent-play-icon-video-player-information-play-icon-miscellaneous-angle-text.png"),
              ),
            )
          ],
          title: const Text('iCescMusic',
              style: TextStyle(color: Color(0xfffbf7ed))),
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xff076aff),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 5),
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(.1),
                        spreadRadius: 5,
                        blurRadius: 5)
                  ]),
              child: const TextField(
                  decoration: InputDecoration(
                      hintText: "Que quieres escuchar",
                      hintStyle: TextStyle(fontWeight: FontWeight.w300),
                      border: InputBorder.none,
                      prefixIcon:
                          Icon(Icons.search, color: Color(0xfff8f6f6)))),
            ),
            Container(
              height: 180,
              margin: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://estaticos.elcolombiano.com/binrepository/780x565/0c0/0d0/none/11101/EDTW/nostalgia-musica-1_42537840_20230605193530.jpg"))),
            ),
            ListTile(
              title: Text("Artistas mas escuchados"),
              titleTextStyle: Theme.of(context).textTheme.titleLarge,
              trailing: Icon(Icons.filter_list_outlined),
            ),
            Expanded(
                child: GridView.count(
              padding: EdgeInsets.all(15),
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 15,
              children: [for (int i = 1; i <= 10; i++) const Itemmusic()],
            ))
          ],
        ));
  }
}
