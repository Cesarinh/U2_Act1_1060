import 'package:flutter/material.dart';

class Itemmusic extends StatelessWidget {
  const Itemmusic({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                color: Theme.of(context).colorScheme.primary.withOpacity(.1),
                spreadRadius: 5,
                blurRadius: 5)
          ]),
      child: Column(
        children: [
          CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://image.europafm.com/clipping/cmsimages02/2022/02/10/86D8D82E-1894-4FD3-A159-5E1AC58CCD8E/98.jpg?crop=3000,1688,x0,y0&width=1900&height=1069&optimize=low&format=webply")),
          SizedBox(
            height: 10,
          ),
          Text(
            "Rauw Alejandro",
            style: Theme.of(context).textTheme.titleSmall,
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: List.generate(
                5,
                (index) => Icon(
                      Icons.star,
                      color: Color(0xff2302dc),
                      size: 18,
                    )),
          )
        ],
      ),
    );
  }
}
