import Foundation
struct Count{
    var bulls = 0
    var cows = 0
}
func RandomWord()->String{
    let index = Int.random(in: 0...wordList.count)
    let word = wordList[index]
    return word
}
func GameFunc(guess: String, answer: String)->Count{
    var count = Count()

    for guessIndex in 0...guess.count-1{
        if guess[guess.index(guess.startIndex, offsetBy: guessIndex)] == answer[answer.index(answer.startIndex, offsetBy: guessIndex)]{
            count.bulls += 1
            continue
        }
        for hiddenIndex in 0...answer.count-1{
            if guess[guess.index(guess.startIndex, offsetBy: guessIndex)] == answer[answer.index(answer.startIndex, offsetBy: hiddenIndex)]{
                count.cows += 1
                break;
                    
            }
                
        }
    }
    
    return count
}
