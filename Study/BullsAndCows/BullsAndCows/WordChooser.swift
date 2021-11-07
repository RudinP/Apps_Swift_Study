import Foundation
func RandomWord()->String{
    let index = Int.random(in: 0...wordList.count)
    let word = wordList[index]
    return word
}
