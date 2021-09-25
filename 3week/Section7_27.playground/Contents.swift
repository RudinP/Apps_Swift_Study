//Declaring and Calling Functions
func multiply(x: Int, y: Int) -> Int {
    return x * y;
}

var result = multiply(x: 8, y: 2);

result / 4;

multiply(x: 5, y: multiply(x: 8, y: 2));

//func takes 3 doubles add them and return an INT

func add(x: Double, y: Double, z: Double) -> Int{
    return Int(x + y + z);
}

add(x: 6.2, y: 4.6, z: 8.3);
