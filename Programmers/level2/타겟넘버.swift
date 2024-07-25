//
//  타겟넘버.swift
//  재귀 풀이 - level2
//
//  Created by 이명진 on 10/27/24.
//

import Foundation

func solution(_ numbers: [Int], _ target: Int) -> Int {
    var answer: Int = 0

    func bfs(idx: Int, result: Int) {
    
        if idx == numbers.count {
            if result == target {
                answer += 1
            }
            return
        }

        bfs(idx: idx + 1, result: result + numbers[idx])
        bfs(idx: idx + 1, result: result - numbers[idx])
    
    }
    
    bfs(idx: 0, result: 0)
    
    return answer
}
