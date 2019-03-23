class Car {
  String _name;
  int _maxSpeed;
  
  Car();
  Car.all(this._name, this._maxSpeed);

  String get name => _name;
  set name(String value) {
    _name = value;
  }

  int get maxSpeed => _maxSpeed;
  set maxSpeed(int value) {
    _maxSpeed = value;
  }
  
  getDetails() {
    return "my car "+ name + " has top speed "+ maxSpeed.toString();
  }
}