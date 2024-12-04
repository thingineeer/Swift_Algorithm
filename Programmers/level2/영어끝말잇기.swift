//
//  영어끝말잇기.swift
//  프로그래머스 - level2
//
//  Created by 이명진 on 12/4/24.
//
//  구현

import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    
    var result: [Int] = [0, 0]
    var dict: [String: Int] = [:]
    
    for i in 0..<words.count { // O(N)
        dict[words[i], default: 0] += 1 // // O(1)
        if let word = dict[words[i]], word >= 2 {
            result[0] = (i % n) + 1
            result[1] = (i / n) + 1
            return result
        }
    }
    
    for i in 1..<words.count { // O(N)
        if words[i-1].last! != words[i].first! {
            result[0] = (i % n) + 1
            result[1] = (i / n) + 1
            return result
        }
    }
    
    return result
    
}
