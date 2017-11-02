//: Playground - noun: a place where people can play

import UIKit
//Part 1
func tossCoin() -> String{
    print("Tossing a Coin!")
    let num1 = Int(arc4random_uniform(2))
    var result = String()
    if num1 > 0{
    result = "Heads"
    }
    else{
    result = "Tails"
    }
    print(result)
    return result
}
tossCoin()
tossCoin()
tossCoin()
tossCoin()

//Part 2
func tossMultipleCoins(num: Int) -> Double{
    var result = String()
    var countH: Double = 0
    var countT: Double = 0
    for _ in 0..<num {
        result = tossCoin()

        if result == "Heads"{
            countH = countH+1
        }
        else if result == "Tails"{
            countT = countT+1
        }
    }
    return countH / Double(num)
}
print(tossMultipleCoins(num: 4))
