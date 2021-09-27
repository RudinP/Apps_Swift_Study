//Optionals with ! and ?
//Optionals are either a particular type or nothing(nil)

var year: Int? = nil; //ok, Int 타입 일 수도 있다~
//var year2: Int = nil; //error

var x = Int("123");

print(x!); //Int 변환이 제대로 작동하지 않았을 것을 염두에 둬야 하기 때문에 Optional을 붙임. 그게 상관 없다면 !을 붙이면 됨.

if x != nil{
    x! * 5;
}
