//: [Previous](@previous)

/*
 Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

 You may assume that each input would have exactly one solution, and you may not use the same element twice.

 You can return the answer in any order.

  

 Example 1:

 Input: nums = [2,7,11,15], target = 9
 Output: [0,1]
 Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
 Example 2:

 Input: nums = [3,2,4], target = 6
 Output: [1,2]
 Example 3:

 Input: nums = [3,3], target = 6
 Output: [0,1]
  

 Constraints:

 2 <= nums.length <= 104
 -109 <= nums[i] <= 109
 -109 <= target <= 109
 Only one valid answer exists.
 */

import Foundation

class Sum {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        for i in 0..<nums.count {
            for j in (i + 1)..<nums.count {  // Check all pairs
                if nums[i] + nums[j] == target {
                    return [i, j]
                }
            }
        }
        
        // Return empty array if no solution found
        return []
    }
}

var sum = Sum()
print(sum.twoSum([2,7,11,15], 9))
print(sum.twoSum([3,2,4], 6))
print(sum.twoSum([3,3], 6))

//: [Next](@next)
