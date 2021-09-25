//How to create Class in Swift

class Car{
    //변수와 함수의 첫 글자는 소문자이지만, 클래스는 대문자.
    //properties == 변수
    var brand = "";
    var modelYear = 0;
    var color = "";
    
    func drive(){
        print("vroom vroom");
        
        6 + 7;
        print("ola");
    }
    
    func intro(){
        print("This \(self.color) \(brand) is \(modelYear) model");
    }
    
    func add(){
        modelYear = modelYear + 10;
    }
}

var myCar = Car(); //class로부터 객체 생성

myCar.modelYear = 2010;

myCar.color = "blue";
myCar.brand = "ford";

myCar.drive();
myCar.add();
myCar.add();

myCar.intro();

//myCar !=sportCar
var sportCar = Car();

sportCar.brand = "ferrari";
sportCar.modelYear = 2020;
sportCar.color = "black";

sportCar.drive();
sportCar.intro();

class Pen{
    var brand = "faber castel";
    var length = 5.10;
    var color = "";
}

var redPen = Pen();


