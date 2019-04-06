import 'dart:async';
import 'dart:convert';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_part2/car.dart';
import 'package:flutter_part2/carDetail.dart';
import 'package:http/http.dart';

class CarList extends StatefulWidget {
  @override
  _CarListState createState() => _CarListState();
}

class _CarListState extends State<CarList> {
  Future<List<Car>> getCarList() async {
    //TODO: firebase URL ekleniyiz.
    Response response = await get("firebaseurl/.json");

    if (response.statusCode == 200) {
      final parsed = json.decode(response.body).cast<Map<String, dynamic>>();

      return parsed.map<Car>((json) => Car.fromJson(json)).toList();
    }
    return throw ("veriler alınamı");
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Araba Listesi"),
      ),
      body: SafeArea(
        child: FutureBuilder(
          future: getCarList(),
          builder: (context, snapshot) {
            if (snapshot.hasData)
              return carlist(snapshot.data);
            else
              return Center(
                child: CircularProgressIndicator(),
              );
          },
        ),
      ),
    );
  }

  carlist(List<Car> data) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(data[index].nickName),
          subtitle: Text("Max Speed: " +
              data[index].maxSpeed.toString() +
              " Stock Number:" +
              data[index].stockNumber.toString()),
          trailing: IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => CarDetail(
                        selectedCar: data[index],
                      )));
            },
            icon: Icon(Icons.arrow_forward),
          ),
          leading: Icon(Icons.ac_unit),
          isThreeLine: true,
        );
      },
      itemCount: data.length,
    );
  }
}

