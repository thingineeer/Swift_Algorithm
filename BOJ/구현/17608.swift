// 17608 막대기

import Foundation

let N = Int(readLine()!)!
var domino: [Int] = []
var temp = 0
var result = 0

for _ in 0..<N {
    let input = Int(readLine()!)!
    domino.append(input)
}

for i in domino.reversed() {
    if temp < i {
        temp = i
        result += 1
    }
}

print(result)
