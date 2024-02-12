import Foundation

var result = ""

let s1 = readLine()!

for s in s1 {
    result += s.isLowercase ? s.uppercased() : s.lowercased()
}

print(result)

