// 블랙잭 B2

import Foundation

func combination<T>(_ elements: [T], _ k: Int) -> [[T]] {
    var result = [[T]]()
    
    func combi(_ index: Int, _ now: [T]) {
        if now.count == k {
            result.append(now)
            return
        }
        for i in index..<elements.count {
            combi(i + 1, now + [elements[i]])
        }
    }
    combi(0, [])
    return result
}

let input = readLine()!.split(separator: " ").map { Int(String($0))! }

let card = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0]
let M = input[1]
let combi = combination(card, 3)

var maxValue = 0

for arr in combi {
    let s = arr.reduce(0, +)
    if s <= M {
        maxValue = max(maxValue, s)
    }
}

print(maxValue)
