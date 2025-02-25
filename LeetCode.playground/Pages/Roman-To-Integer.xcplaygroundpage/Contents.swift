//: [Previous](@previous)

import Foundation

class Roman {
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

var roman = Roman()
print(roman.romanToInt("LVIII"))
print(roman.romanToInt("VI"))
print(roman.romanToInt("IV"))
print(roman.romanToInt("IX"))
print(roman.romanToInt("MCMXCIV"))

//: [Next](@next)
