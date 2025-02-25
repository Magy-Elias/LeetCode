import Foundation

class Solution {
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

var sol = Solution()
print(sol.twoSum([2,7,11,15], 9))
print(sol.twoSum([3,2,4], 6))
print(sol.twoSum([3,3], 6))
