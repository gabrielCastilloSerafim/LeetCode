import UIKit

/*
 
 Given an integer x, return true if x is a palindrome, and false otherwise.
 
 Example:
 
 Input: x = 121
 Output: true
 Explanation: 121 reads as 121 from left to right and from right to left.
 
 */

func isPalindrome(_ x: Int) -> Bool {
    
    guard x >= 0 else { return false }
    
    var numbersArray: [String] = []
    
    x.description.forEach({numbersArray.append("\($0)")})
    
    var reversed: [String] = []
    
    for letter in numbersArray {
        reversed.insert(letter, at: 0)
    }
    
    return numbersArray == reversed
}

print(isPalindrome(-132221))
