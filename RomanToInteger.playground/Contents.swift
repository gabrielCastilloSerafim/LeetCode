import UIKit

/*
 13. Roman to Integer
 
 Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.
 
 Symbol       Value
 I             1
 V             5
 X             10
 L             50
 C             100
 D             500
 M             1000
 
 Given a roman numeral, convert it to an integer.
 */


func romanToInt(_ s: String) -> Int {
    
    var numbersArray: [Int] = []
    var subtractedArray: [Int] = []
    var performedSubtraction = false
    var result = 0
    
    for letter in s {
        
        numbersArray.append(correspondingNumber(letter: String(letter)))
    }
    
    for (index, number) in numbersArray.enumerated() {
        
        if performedSubtraction {
            performedSubtraction = false
            continue
        }
        
        if index + 1 >= numbersArray.count {
            
            if number < numbersArray.last ?? 0 {
                subtractedArray.append(numbersArray.last ?? 0 - number)
            } else {
                subtractedArray.append(numbersArray.last ?? 0)
            }
            
            continue
        }
        
        if number < numbersArray[index + 1] {
            
            // If number is lower then next number perform subtraction and replace previous number
            subtractedArray.append(numbersArray[index + 1] - number)
            performedSubtraction = true
            
        } else {
            subtractedArray.append(number)
        }
    }
    
    for number in subtractedArray {
        result += number
    }
    
    return result
}

func correspondingNumber(letter: String) -> Int {
    
    switch letter {
        
    case "I":
        return 1
        
    case "V":
        return 5
        
    case "X":
        return 10
        
    case "L":
        return 50
        
    case "C":
        return 100
        
    case "D":
        return 500
        
    case "M":
        return 1000
        
    default:
        return 0
    }
}

print(romanToInt("IV"))
