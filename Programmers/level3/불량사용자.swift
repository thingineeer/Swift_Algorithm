//
//  불량사용자.swift
//  프로그래머스 - level3
//
//  Created by 이명진 on 25/03/10
//

import Foundation

func solution(_ user_id: [String], _ banned_id: [String]) -> Int {
    
    let n = banned_id.count
    
    let userPermutation: [[String]] = permutation(array: user_id, n: n)
    var answer: Set<Set<String>> = []
    
    
    for user in userPermutation { // [["abc123", "frodo"], ["frodo", "frodoc"]]
        var isValid = true
        
        for (a, b) in zip(user, banned_id) { // ["fr*d*", "abc1**"]
            if !isBanID(user: a, ban: b) {
                isValid = false
            }
        }
        
        if isValid {
            answer.insert(Set(user))
        }
    }
    
    return answer.count
}


func isBanID(user: String, ban: String) -> Bool {
    if user.count != ban.count { return false }
    
    for (i, j) in zip(user, ban) {
        if j == "*" {
            continue
        }
        
        if i != j {
            return false
        }
    }
    return true
}

func permutation<T>(array: [T], n: Int) -> [[T]] {
    
    var visited = [Bool](repeating: false, count: array.count)
    var result: [[T]] = []
    
    func permutation(current: [T]) {
        if current.count == n {
            result.append(current)
            return
        }
        
        for i in 0..<array.count {
            if !visited[i] {
                visited[i] = true
                permutation(current: current + [array[i]])
                visited[i] = false
            }
        }
    }
    permutation(current: [])
    
    return result
}
