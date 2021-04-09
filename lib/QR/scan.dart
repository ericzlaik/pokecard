import 'package:flutter/material.dart';

class ScanPage extends StatefulWidget {
  @override
  _ScanPageState createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  String qrCodeResult = "Not Yet Scanned";
  String qrCode = 'Unknown';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: ListView(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      new IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      Spacer(),
                      Container(
                        height: 40,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage('images/pokecard.png'),
                                fit: BoxFit.fill)),
                      ),
                      SizedBox(width: 15)
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 5, right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 150,
                          width: double.infinity,
                          decoration: BoxDecoration(
                          ),
                          child: Row(
                            children: <Widget>[
                              Column(
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),Text(
                    "Resultado del escaneo",
                    style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),Text(
                    qrCodeResult,
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 15, right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 16, top: 15, right: 10, bottom: 15),
                          height: 120,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(width: 5.0, color: Colors.red),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.blue[900],
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  height: 80,
                                  width: 280,
                                  child: RaisedButton(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20.0),
                                          side: BorderSide(color: Colors.red)
                                      ),
                                      color: Colors.red,
                                      textColor: Colors.yellow,
                                      child: Text("Escanear QR", style: TextStyle(fontSize: 23.0,),
                                      ),
                                      onPressed: () {
                                        /*Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => ScanPage()),
                                        );*/
                                      }
                                  )
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
        )
    );
  }
}