//
//  기지국설치.swift
//  프로그래머스 - level3
//
//  Created by 이명진 on 4/2/25
//
//  구현 (정답 이지만 효율성 테스트 점수 0점)

import Foundation

func solution(_ n: Int, _ stations: [Int], _ w: Int) -> Int {
    var networks = Array(repeating: 0, count: n)
    var index = 0
    var answer = 0
    
    for station in stations { // O(N * W), stations 의 원소는 항상 1 이상
        let startPointIndex = (station - w - 1 > 0) ? station - w - 1: 0
        let endPointIndex = (station + w - 1 < n) ? station + w - 1 : n - 1
        
        for i in startPointIndex...endPointIndex {
            networks[i] = 1
        }
    }
    
    while index < n {  // O(N)
        if networks[index] == 1 {
            index += 1
        } else {
            index += (2 * w + 1)
            answer += 1
        }
    }
    
    return answer
}

print(solution(11, [1, 4, 11], 0))
print(solution(11, [4, 11], 1))
print(solution(16, [9], 2))
