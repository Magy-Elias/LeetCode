//: [Previous](@previous)

import Foundation

class LastWord {
    func lengthOfLastWord(_ s: String) -> Int {
        let sentence = s.trimmingCharacters(in: .whitespaces)
        guard let lastWord = sentence.components(separatedBy: " ").last else { return 0 }
        return lastWord.count
    }
}

var lastWord = LastWord()
print(lastWord.lengthOfLastWord("Hello World"))
print(lastWord.lengthOfLastWord("   fly me   to   the moon  "))
print(lastWord.lengthOfLastWord("luffy is still joyboy"))
//: [Next](@next)
