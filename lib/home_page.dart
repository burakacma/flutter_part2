import 'package:flutter/material.dart';

class Beginner extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BeginnerState();
  }
}

class BeginnerState extends State<Beginner> {
  @override
  Widget build(BuildContext context) {
    double boxSize = MediaQuery.of(context).size.height < MediaQuery.of(context).size.width
        ? MediaQuery.of(context).size.height * 7 / 10
        : MediaQuery.of(context).size.width * 7 / 10;
    return Scaffold(
        body: SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width,
        //height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: new LinearGradient(
              colors: [
                Colors.blue[50],
                Colors.white10,
              ],
              begin: const FractionalOffset(0.0, 0.5),
              end: const FractionalOffset(0.0, 1.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  //height: MediaQuery.of(context).size.height * 3 / 10,
                  width: MediaQuery.of(context).size.width /4,
                  alignment: Alignment.topCenter,
                  child: Image.asset("assets/download.jpeg"),
                ),
              ),
              Center(
                child: Container(
                  height: boxSize,
                  width: boxSize * 1.4,
                  padding: EdgeInsets.only(top: 50.0),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    overflow: Overflow.visible,
                    children: <Widget>[
                      Card(
                        elevation: 2.0,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Container(
                          width: 300.0,
                          height: 190.0,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding:
                                    EdgeInsets.only(top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                                child: TextField(
                                  keyboardType: TextInputType.emailAddress,
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    icon: Icon(
                                      Icons.mail,
                                      color: Colors.black,
                                      size: 22.0,
                                    ),
                                    hintText: "Email Address",
                                    hintStyle: TextStyle( fontSize: 17.0),
                                  ),
                                ),
                              ),
                              Container(
                                width: 250.0,
                                height: 1.0,
                                color: Colors.grey[400],
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                                child: TextField(
                                  obscureText: true,
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    icon: Icon(
                                      Icons.lock,
                                      size: 22.0,
                                      color: Colors.black,
                                    ),
                                    hintText: "Password",
                                    hintStyle: TextStyle(  fontSize: 17.0),
                                    suffixIcon: GestureDetector(
                                      onTap: () {},
                                      child: Icon(
                                        Icons.remove_red_eye,
                                        size: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 170.0),
                        decoration: new BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.blue[100],
                              offset: Offset(1.0, 6.0),
                              blurRadius: 20.0,
                            ),
                            BoxShadow(
                              color: Colors.blue[100],
                              offset: Offset(1.0, 6.0),
                              blurRadius: 20.0,
                            ),
                          ],
                          gradient: new LinearGradient(
                              colors: [
                                Colors.blue[200],
                                Colors.blue[300],
                              ],
                              begin: const FractionalOffset(0.2, 0.2),
                              end: const FractionalOffset(1.0, 1.0),
                              stops: [0.0, 1.0],
                              tileMode: TileMode.clamp),
                        ),
                        child: MaterialButton(
                            highlightColor: Colors.transparent,
                            splashColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(5.0))),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 42.0),
                              child: Text(
                                "LOGIN",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25.0, fontFamily: "WorkSansBold"),
                              ),
                            ),
                            onPressed: () {
//                              Navigator.of(context).push(
//                                  MaterialPageRoute(builder: (context) => Liste())
//                              );
                            }),
                      ),//login butonu
                    ],
                  ),
                ),
              ),
              Align(
                child: Container(
                      child: Image.asset("assets/download.jpeg")
                      ,
                      width: MediaQuery.of(context).size.width /4,
                    ),

                alignment: Alignment.bottomCenter,
              )
            ],
          ),
        ),
      ),
    ));
  }
}
/*
*
Center(
                child: Container(
                  height: boxSize - boxSize * 0.12,
                  width: boxSize * 1.4,
                  child: Stack(
                    children: <Widget>[
                      Material(
                        elevation: 10.0,
                        borderRadius: BorderRadius.circular(10.0),
                        shadowColor: Color(0x802196F3),
                        child: Container(
                            height: boxSize - boxSize * 0.12,
                            width: boxSize * 1.4,
                            child: Container(
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: <Widget>[
                                        TextField(
                                          decoration: InputDecoration(
                                            prefixIcon: Icon(Icons.email),
                                            hintText: "Username",),
                                        ),
                                        TextField(
                                          decoration: InputDecoration(
                                              prefixIcon: Icon(Icons.vpn_key),
                                              hintText: "Password",
                                              suffixIcon:
                                              Icon(Icons.remove_red_eye)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ),
                      Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        decoration: BoxDecoration(color: Colors.blueGrey),
                        child: FlatButton(
                          child: Text("Giriş Yap"),
                          onPressed: () {},
                        ),
                      ),
                    )],

                  ),
                ),
              ),
*
* */
