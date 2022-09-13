import UIKit

/*Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

You can return the answer in any order.*/

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    
    var answer:[Int] = []
    
    for i in 0..<nums.count {
        for y in 0..<nums.count where i != y {
            
            if nums[i] + nums[y] == target {
                answer = [i,y]
            }
        }
    }
    
    return answer
}

twoSum([2,1,9,4,4,56,90,3], 8)





