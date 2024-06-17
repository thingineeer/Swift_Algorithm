//
//  2961.swift
//  도영이가 만든 맛있는 음식 S2 - 재귀
//
//  Created by 이명진 on 10/25/24.
//

import Foundation

func recur(ind: Int, S: Int, B: Int, result: inout Int, use: Int) {
    if ind == N {
        if use == 0 { // 아무 재료도 사용 하지 않았다면
            return
        }
        let temp = abs(S - B)
        result = min(temp, result)
        return
    }
    
    recur(ind: ind + 1, S: S * ingre[ind][0], B: B + ingre[ind][1], result: &result, use: use + 1)
    
    recur(ind: ind + 1, S: S, B: B, result: &result, use: use)
}

var result: Int = 999999999
let N = Int(readLine()!)!
var ingre: [[Int]] = []

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    ingre.append(input)
}

recur(ind: 0, S: 1, B: 0, result: &result, use: 0)

print(result)
