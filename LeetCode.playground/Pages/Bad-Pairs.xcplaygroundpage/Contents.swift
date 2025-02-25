//: [Previous](@previous)

import Foundation

class BadPairs {
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

var badPairs = BadPairs()
print(badPairs.countBadPairs([4,1,3,3]))
print(badPairs.countBadPairs([1,2,3,4,5]))


//: [Next](@next)
