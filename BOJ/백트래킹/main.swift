//
//  main.swift
//  코테
//
//  Created by 이명진 on 4/15/24.
//

func backtracking() {
    if result.count == M {
        print(result.map{ String($0) }.joined(separator:" "))
        return
    }
    
    for i in 1...N {
        if !result.contains(i) {
            result.append(i)
            backtracking()
            result.popLast()!
        }
    }
}

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0]
let M = input[1]

var result: [Int] = []
let a = (1...3)

backtracking()
