//
//  기능 개발.swift
//  level 2
//
//  Created by 이명진 on 2/12/24.
//

import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    
    var progresses: [Int] = progresses
    var speeds: [Int] = speeds
    var result: [Int] = []
    
    while true {
        var count = 0
        if let prog = progresses.first { // 맨앞 원소가 존재한다면
            if prog < 100 {
                for i in 0..<speeds.count  {
                    progresses[i] += speeds[i]
                }
            } else {
                for _ in 0..<progresses.count {
                    if progresses[0] >= 100 {
                        progresses.removeFirst()
                        speeds.removeFirst()
                        count += 1
                    }
                }
                result.append(count)
            }
        } else {
            break
        }
    }
    return result
}
