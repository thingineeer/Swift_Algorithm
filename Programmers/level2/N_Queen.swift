//
//  N_Queen.swift
//  백트래킹 - level2
//
//  Created by 이명진 on 10/28/24.
//

import Foundation

func isPromise(_ x: Int, _ row: inout [Int]) -> Bool {
    for i in 0..<x { // 0..<0 일때는 그냥 True
        if row[x] == row[i] || abs(row[x] - row[i]) == abs(x - i) { // 열, 대각선에 걸리면 false
            return false
        }
    }
    return true
}

func solution(_ n: Int) -> Int {
    
    var answer: Int = 0
    var row: [Int] = Array(repeating: 0, count: n) // [0, 0, 0, 0]
    
    func recur(x: Int, row: inout [Int]) {
    
        if x == n {
            answer += 1
            return
        }

        for i in 0..<n {
            row[x] = i

            if isPromise(x, &row) {
                recur(x: x + 1, row: &row)
            }
        }
    }
    
    recur(x: 0, row: &row)
    
    return answer
}
