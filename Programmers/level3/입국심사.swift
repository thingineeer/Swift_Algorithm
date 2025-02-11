//
//  입국심사.swift
//  프로그래머스 - level3
//
//  Created by 이명진 on 4/2/25
//

import Foundation

func solution(_ n: Int, _ times: [Int]) -> Int64 {
    
    var timesList = times
    timesList.sort()
    
    var start = 0
    var end = timesList[timesList.count - 1] * n
    var answer: Int64 = 0
    
    while start <= end {
        var mid = (start + end) / 2
        var complete = 0
        
        for i in 0..<timesList.count {
            complete += mid / timesList[i]
        }
        
        if complete < n {
            start = mid + 1
        } else {
            end = mid - 1
            answer = Int64(mid)
        }
    }
    
    return answer
}

print(solution(6, [7, 10]))
