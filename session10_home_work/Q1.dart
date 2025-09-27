class Vehicle {
  String _type;
  double _fuelPerKm;
  int _customers;

  Vehicle(this._type, this._fuelPerKm, this._customers) {
    if (_type.isEmpty) {
      print("Error");
    }
    if (_fuelPerKm <= 0) {
      print("Error");
    }
    if (_customers < 0) {
      print("Error");
    }
  }

  double calculateFuel(double distance) {
    return distance * _fuelPerKm;
  }

  bool canComplete(double distance) {
    return true;
  }

  int get customers => _customers;
}

class Bus extends Vehicle {
  double _acConsumption;

  Bus(super.type, super.fuelPerKm, super.customers, this._acConsumption) {
    if (_acConsumption < 0) {
      print("Error");
    }
  }

  @override
  double calculateFuel(double distance) {
    double baseFuel = super.calculateFuel(distance);
    return baseFuel + (_acConsumption * distance * (customers / 50));
  }
}

class Truck extends Vehicle {
  double _cargoWeight;

  Truck(super.type, super.fuelPerKm, super.customers, this._cargoWeight) {
    if (_cargoWeight < 0) {
      print("Error");
    }
  }

  @override
  double calculateFuel(double distance) {
    double baseFuel = super.calculateFuel(distance);
    return baseFuel + (_cargoWeight * 0.01 * distance);
  }
}

void main() {
  Bus b1 = Bus("City Bus", 0.2, 25, 0.1);
  Truck t1 = Truck("Delivery Truck", 0.5, 2, 1500);

  List<Vehicle> vehicles = [b1, t1];

  List<double> distances = [100, 200, 50];
}
