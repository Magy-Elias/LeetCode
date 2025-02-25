import Foundation

class Solution {
    var dict = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
    
    func romanToInt(_ s: String) -> Int {
        var value = 0
        if s.count >= 1 && s.count <= 15 && s.filter({ !dict.keys.contains(String($0)) }).isEmpty {
            var previousValue = 0
            
            for char in s.reversed() {
                let current = dict[String(char)] ?? 0
                if current < previousValue {
                    value -= current
                } else {
                    value += current
                }
                previousValue = dict[String(char)] ?? 0
            }
        }
        return value
    }
}

var sol = Solution()
print(sol.romanToInt("LVIII"))
print(sol.romanToInt("VI"))
print(sol.romanToInt("IV"))
print(sol.romanToInt("IX"))
print(sol.romanToInt("MCMXCIV"))
