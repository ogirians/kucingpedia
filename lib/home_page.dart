import 'package:flutter/material.dart';
// import 'package:kucingpedia/detail_page.dart';
final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  primary: Colors.white,
  backgroundColor: Colors.lightBlue,
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
);

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required String title, }) : super(key: key);
  

  @override
    Widget build(BuildContext context) {
      return Scaffold(
          body: Padding(
                padding: EdgeInsets.all(10.0),   
                child: (
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                    crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                    children: <Widget>[
                      Container(
                        // color: Colors.grey[100],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center, //Center Column contents vertically,
                          crossAxisAlignment: CrossAxisAlignment.center, //Center Column contents horizontally,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(right: 30, left:30),
                              child : Image.asset('assets/images/KucingFront.png')
                             
                            )
                          ],
                        ),
                      ),
                      Container(  
                        // color: Colors.grey[100],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center, //Center Column contents vertically,
                          crossAxisAlignment: CrossAxisAlignment.center, //Center Column contents horizontally,
                          children: <Widget>[
                            const Text(
                              'Cari tahu tentang Kucing kamu',
                              textAlign: TextAlign.center,
                              style : TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                                                
                              )
                            )
                          ],
                        ),
                      ),
                      Container(  
                        // color: Colors.grey[100],
                        padding: EdgeInsets.only(top:15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center, //Center Column contents vertically,
                          crossAxisAlignment: CrossAxisAlignment.center, //Center Column contents horizontally,
                          children: <Widget>[
                            const Text(
                              'Ensiklopedia tentang kucing-kucing di dunia , dan media sharing',
                              textAlign: TextAlign.center,
                              style : TextStyle(
                                color: Colors.black45,
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                                                                
                              )
                            )
                          ],
                        ),
                      ),
                      Container(
                        // color: Colors.grey[100],
                        padding: EdgeInsets.only(top: 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center, //Center Column contents vertically,
                          crossAxisAlignment: CrossAxisAlignment.center, //Center Column contents horizontally,
                          children: <Widget>[
                            TextButton(
                              style: flatButtonStyle,
                              onPressed: () { },
                              child: Text('Masuk'),
                            )

                          ],
                        ),
                      ),
                      
                    ],
                  )
                  
                )
          )
        );
      
  }
}



