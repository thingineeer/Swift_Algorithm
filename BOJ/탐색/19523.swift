//
//  19532.swift
//  수학은 비대면강의입니다 B2
//
//  Created by 이명진 on 31/7/24.
//

// Ax + By = C
// Dx + Ey = F
// 완탐으로 해도 시간 복잡도 문제 X

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
var result: (Int, Int) = (0, 0)

for X in -999...999 {
    for Y in -999...999 {
        let A = input[0], B = input[1], C = input[2], D = input[3], E = input[4], F = input[5]
        if A * X + B * Y == C && D * X + E * Y == F {
            result = (X, Y)
            break
        }
    }
}

print(result.0, result.1)
