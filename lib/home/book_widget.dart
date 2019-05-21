import 'package:flutter/material.dart';

class BookWidget extends StatelessWidget {
  String imageUrl =
      "https://animals.sandiegozoo.org/sites/default/files/2016-10/poison_frog_blue.jpg";
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      height: 250,
      margin: EdgeInsets.fromLTRB(16, 12, 16, 12),
      child: Stack(
        children: <Widget>[
          Align(
            child: ClipRRect(
              child: Image.network(
                imageUrl,
                height: 250,
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            alignment: Alignment.centerRight,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 220,
              width: 180,
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 15,
                    )
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Book Title",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Book Autor",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
