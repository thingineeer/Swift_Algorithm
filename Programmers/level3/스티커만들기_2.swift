//
//  스티커모으기(2).swift
//  프로그래머스 - level3
//
//  Created by 이명진 on 25/03/06
//

import Foundation

func solution(_ sticker:[Int]) -> Int {
    
    guard sticker.count != 1 else {
        return sticker[0]
    }
    
    guard sticker.count != 2 else {
        return max(sticker[0], sticker[1])
    }
    
    var dp1 = Array(repeating: 0, count: sticker.count) // index = 0 을 선택 했을 경우
    
    dp1[0] = sticker[0]
    dp1[1] = sticker[0]
    
    for i in 2..<sticker.count - 1 {
        dp1[i] = max(dp1[i-2] + sticker[i], dp1[i-1])
    }
    
    var dp2 = Array(repeating: 0, count: sticker.count) // index = 1 을 선택 했을 경우
    dp2[0] = 0
    dp2[1] = sticker[1]
    
    for i in 2..<sticker.count {
        dp2[i] = max(dp2[i-2] + sticker[i], dp2[i-1])
    }
    
    let result = max(dp1[sticker.count - 2], dp2[sticker.count - 1])
    return result
}

print(solution([1,2,3]))

