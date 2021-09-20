//Arrays
var friends: [String] = ["Chandler", "Phoebe", "Ross", "Joey", "Rachel", "Monica"]; //String Array
//let은 constant화

friends.first; //0인덱스 값 반환
friends.last; //마지막 인덱스 값 반환

friends[2];

friends[0];

friends[4];

friends.append("Gunther");

friends.insert("Gunther", at: 0); //(value, at: index)

friends.remove(at: 7);
//==
friends.remove(at: friends.count-1); //index는 0부터이기때문에 -1 안하면 out of index 뜸

friends.removeLast();

friends.count; //.length인듯
