// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CardMapel extends StatelessWidget {
  final String title;
  final Image myImage;
  final Color colorCard;
  const CardMapel({
    Key? key,
    required this.title,
    required this.myImage,
    required this.colorCard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 350,
        height: 150,
        decoration: BoxDecoration(
          color: colorCard,
          borderRadius: BorderRadius.circular(36),
        ),
        child: Row(
          children: [
            Container(
              width: 160,
              padding: EdgeInsets.only(
                top: 20,
              ),
              child: Column(
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Poppins-Bold",
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 7),
                    margin: EdgeInsets.only(right: 20),
                    width: 100,
                    height: 35,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      textAlign: TextAlign.center,
                      "Lihat",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: "PopOne",
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              child: myImage,
            ),
          ],
        ));
  }
}
