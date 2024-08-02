//
//  14568.swift
//  2017 연세대학교 프로그래밍 경시대회 B3
//
//  Created by 이명진 on 10/22/24.
//

// 영훈이 i
// 남규 j >= i + 2
// 택희는 K == 짝수
// 다 합쳐서 전체 갯수만 되면 됨

import Foundation

let input = Int(readLine()!)!
var result = 0

for i in 1...input {
    for j in 1...input {
        for k in 1...input {
            if i + j + k == input && j >= i + 2 && k % 2 == 0 {
                result += 1
            }
        }
    }
}
print(result)
