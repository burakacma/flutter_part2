import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_part2/car.dart';
import 'package:http/http.dart';


class CarDetail extends StatefulWidget {
  Car selectedCar;

  CarDetail({Key key, this.selectedCar}) : super(key: key);

  @override
  _CarDetailState createState() => _CarDetailState();
}

class _CarDetailState extends State<CarDetail> {
  TextEditingController nickNameController = new TextEditingController();
  TextEditingController maxSpeedController = new TextEditingController();
  TextEditingController stockNumberController = new TextEditingController();

  @override
  void initState() {
    nickNameController = TextEditingController(text: widget.selectedCar.nickName);
    maxSpeedController = TextEditingController(text: widget.selectedCar.maxSpeed.toString());
    stockNumberController = TextEditingController(text: widget.selectedCar.stockNumber.toString());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Araba Detay"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: nickNameController,
              ),
              TextField(
                controller: maxSpeedController,
              ),
              TextField(
                controller: stockNumberController,
              ),
              FlatButton(
                child: Text("Güncelle"),
                onPressed: () {
                  Car newCar = new Car();
                  newCar.id = widget.selectedCar.id;
                  newCar.nickName =nickNameController.text;
                  newCar.maxSpeed = int.parse(maxSpeedController.text);
                  newCar.stockNumber = int.parse(stockNumberController.text);
                  patchFirebase(newCar);
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  patchFirebase(Car car) async {
    String body = json.encode(car.toJson());
//TODO: firebase URL ekleniyiz.
    Response response = await patch(
      "firebaseurl/${car.id}/.json",
      body: body,
      headers: {
        'Content-type': 'application/json',
      },
    );

    if (response.statusCode == 200)
      return true;
    else
      return false;
  }
}
