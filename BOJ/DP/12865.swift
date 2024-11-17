//
//  12865.swift
//  평범한 배낭 - G5 (재귀, 시간 초과)
//
//  Created by 이명진 on 11/4/24.
//

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0] // 4
let K = input[1] // 7

var result = 0
var items: [[Int]] = []

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    items.append(input)
}

func recur(idx: Int, weight: Int, value: Int) {
    
    if weight > K {
        return
    }
    
    if idx == N {
        result = max(value, result)
        return
    }
    
    recur(idx: idx + 1, weight: weight + items[idx][0], value: value + items[idx][1])
    
    recur(idx: idx + 1, weight: weight, value: value)
    
}

recur(idx: 0, weight: 0, value: 0)

print(result)

