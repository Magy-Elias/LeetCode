import Foundation

class Solution {
    func countBadPairs(_ nums: [Int]) -> Int {
        var pairs: [Int: Int] = [:]
        var goodPairsCount = 0
        
        for i in 0..<nums.count {
            let key = nums[i] - i
            if let x = pairs[key] {
                goodPairsCount += x
            }
            pairs[key, default: 0] += 1
        }
        let totalPairsCount = (nums.count * (nums.count - 1)) / 2
        let badPairsCount = totalPairsCount - goodPairsCount
        return badPairsCount
    }
    
}

var sol = Solution()
print(sol.countBadPairs([4,1,3,3]))
print(sol.countBadPairs([1,2,3,4,5]))
