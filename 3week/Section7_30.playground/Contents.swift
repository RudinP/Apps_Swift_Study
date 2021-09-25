class Vehicle{
    var brand = "";
    var modelYear = 0;
    
    func drive(){
        print("asdasdas");
    }
}

class Truck : Vehicle{
    override func drive() {
        print("pit pit");
    }
}

class Car : Vehicle {
    var color = "";
    
    override func drive(){
        print("vroom vroom");
        super.drive(); //부모 클래스의 drive func를 실행.
    }
}

var myCar = Car();

myCar.modelYear = 2010;
myCar.color = "blue";
myCar.brand = "ford"
myCar.drive();

var myTruck = Truck();
myTruck.modelYear
myTruck.drive();
