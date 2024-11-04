//
//  3020.swift
//  개똥벌레 - G5
//
//  Created by 이명진 on 11/4/24.
//

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let H = input[1]

var list = Array(repeating: 0, count: H)

// O(N)
for i in 0..<N {
    let wall = Int(readLine()!)!
    if i % 2 == 0 { // 짝수번째 일때
        list[0] += 1
        list[wall] -= 1
    } else { // 홀수번째 일때
        list[H-wall] += 1
    }
}

var result: [Int] = []

// O(N)
for i in 1..<list.count {
    list[i] = list[i] + list[i-1]
}

let minValue = list.min()!
let minCount = list.filter { $0 == minValue }.count

print(minValue, minCount)
