//Given a string s, find the length of the longest substring without repeating characters.
//
//Example:
//
//Input: "abcabcbb"
//Output: 3 (The substring "abc" is the longest without repeating characters.)

import Foundation

func lengthOfLongestSubstring(_ s: String) -> Int {
    var start = 0
    var maxLength = 0
    var charIndexMap = [Character: Int]()
    
    for (end, char) in s.enumerated() {
        // If the character is already in the map and its index is within the current window
        if let prevIndex = charIndexMap[char], prevIndex >= start {
            start = prevIndex + 1
        }
        
        // Update the latest index of the character
        charIndexMap[char] = end
        
        // Calculate the length of the current substring
        maxLength = max(maxLength, end - start + 1)
    }
    
    return maxLength
}

// Example usage:
let s = "abcabcbb"
print(lengthOfLongestSubstring(s))  // Output should be 3
