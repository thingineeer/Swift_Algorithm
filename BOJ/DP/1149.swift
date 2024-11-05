//
//  1149.swift
//  RGB거리 - S1
//
//  Created by 이명진 on 11/5/24.
//

// R B R 같은 조합은 가능
// 연달아서 같은 색의 집이 올 수 없다.

let input = Int(readLine()!)!

var houses: [[Int]] = []

for _ in 0..<input {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    houses.append(input)
}

for idx in 1..<input {
    for RGB in 0..<houses[idx].count {
        if RGB == 0 {
            houses[idx][RGB] += min(houses[idx-1][1], houses[idx-1][2])
        }
        
        if RGB == 1 {
            houses[idx][RGB] += min(houses[idx-1][0], houses[idx-1][2])
        }
        
        if RGB == 2 {
            houses[idx][RGB] += min(houses[idx-1][0], houses[idx-1][1])
        }
    }
}

print(houses.last!.min()!)


