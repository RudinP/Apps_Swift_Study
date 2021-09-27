class Vehicle{
    
}

class Car: Vehicle{
    
}

class Truck: Vehicle{
    
}

var myVehicle: Vehicle = Car();

if let myCar = myVehicle as? Car {
    print(myCar);
}

