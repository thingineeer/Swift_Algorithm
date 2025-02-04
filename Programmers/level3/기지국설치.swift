//
//  기지국설치.swift
//  프로그래머스 - level3
//
//  Created by 이명진 on 4/2/25
//
//  코드 개선 -> 시간 복잡도: O(N) 으로 해결, 공간 복잡도: 2억개의 메모리 사용 하지 않고 해결

import Foundation

func solution(_ n: Int, _ stations: [Int], _ w: Int) -> Int {
    var answer = 0
    var currentHome = 1
    var currentStation = 0
    
    while currentHome <= n {
        
        let startRange = stations[currentStation]-w
        let endRange = stations[currentStation]+w
        let currentRange = startRange...endRange
        
        if currentRange ~= currentHome { // 현재 기지국이 전파 범위에 포함 된다면
            currentHome = (endRange + 1) // 전파 범위 탈출
             
            if currentStation < stations.count - 1 { // 다음 기지국이 있다면
                currentStation += 1 // 다음 기지국 전파 범위 비교
            }
            
            // 다음 기지국이 없으면 무시
            
        } else { // 현재 기지국이 전파 범위에 포함 되지 않는 다면
            answer += 1
            currentHome += (2 * w + 1)
        }

    }
    
    return answer
}
