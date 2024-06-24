//
//  15652.swift
//  N과 M (4) S3 - 재귀
//
//  Created by 이명진 on 10/25/24.
//

import Foundation

func recur(number: Int, start: Int) {
    if number == M {
        print(arr.map { String($0) }.joined(separator: " "))
        return
    }
    
    for i in start...N {
        arr.append(i)
        recur(number: number + 1, start: i) // start를 i로 설정하여 중복을 방지
        arr.removeLast()
    }
}

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]
var arr: [Int] = []

recur(number: 0, start: 1)
