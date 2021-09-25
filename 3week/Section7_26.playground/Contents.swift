//Declaring and Calling Functions

func consoleLog() {
    print("Hey guys!");
}

consoleLog();

func dayOfWeek(day :  String, month: Int){
    print("Today is \(day). We are in month \(month)");
}

dayOfWeek(day : "Monday", month: 6);
dayOfWeek(day : "Saturday", month: 4);
dayOfWeek(day : "Sunday", month: 10);

func multiply(x : Int, y : Int){
    print(x * y);
}

multiply(x: 7, y:5);
