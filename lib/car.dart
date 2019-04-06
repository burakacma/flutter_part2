class Car {
  int id;
  String nickName;
  int maxSpeed;
  int stockNumber;

  Car();

  Car.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nickName = json['nickName'];
    maxSpeed = json['maxSpeed'];
    stockNumber = json['stockNumber'];
  }

  Map<String, dynamic> toJson() {
    return {
      'nickName': "$nickName",
      'maxSpeed': maxSpeed,
      'stockNumber': stockNumber,
      'id': id};
  }
}
