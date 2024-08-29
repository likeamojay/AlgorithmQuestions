//Problem: Find the Largest Subarray with Sum 0
//
//Given an array of integers, find the length of the largest subarray whose sum is 0. For example:
//
//Input: [1, 2, -3, 3, -2, 2, -2]
//Output: 5 (The subarray [2, -3, 3, -2, 2] sums to 0)



import Foundation

let array = [1, 2, -3, 3, -2, 2, -2]

func largestSubarrayWithSumZero(_ array: [Int]) -> Int {
    var sum = 0
    var maxLength = 0
    var sumIndexMap = [Int: Int]()
    
    for (i, number) in array.enumerated() {
        sum += number
        
        if sum == 0 {
            maxLength = i + 1
        }
        
        if let prevIndex = sumIndexMap[sum] {
            maxLength = max(maxLength, i - prevIndex)
        } else {
            sumIndexMap[sum] = i
        }
    }
    
    return maxLength
}

print("Length \(largestSubarrayWithSumZero(array))")
