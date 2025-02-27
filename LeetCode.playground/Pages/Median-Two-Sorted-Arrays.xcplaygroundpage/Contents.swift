//: [Previous](@previous)

/*
 Given two sorted arrays nums1 and nums2 of size m and n respectively, return the median of the two sorted arrays.

 The overall run time complexity should be O(log (m+n)).

  

 Example 1:

 Input: nums1 = [1,3], nums2 = [2]
 Output: 2.00000
 Explanation: merged array = [1,2,3] and median is 2.
 Example 2:

 Input: nums1 = [1,2], nums2 = [3,4]
 Output: 2.50000
 Explanation: merged array = [1,2,3,4] and median is (2 + 3) / 2 = 2.5.
 */


import Foundation

class MedianOfSortedArrays {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        var arr = (nums1 + nums2).sorted()
        var totalCount = arr.count
        if totalCount % 2 == 0 {
            // even numbers
            var mid1 = arr[totalCount / 2]
            var mid2 = arr[(totalCount / 2) - 1]
            return Double(mid1 + mid2) / 2.0
        } else {
            // odd numbers
            return Double(arr[(totalCount - 1) / 2])
        }
    }
}

var medianOfSortedArrays = MedianOfSortedArrays()
print(medianOfSortedArrays.findMedianSortedArrays([1,3], [2]))
print(medianOfSortedArrays.findMedianSortedArrays([1,2], [3,4]))
print(medianOfSortedArrays.findMedianSortedArrays([2,2,4,4], [2,2,2,4,4]))

//: [Next](@next)
