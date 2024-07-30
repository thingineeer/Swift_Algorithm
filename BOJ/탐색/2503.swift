//
//  2503.swift
//  숫자 야구 S3
//
//  Created by 이명진 on 10/23/24.
//

func readLintHint() -> [[Int]] {
    var hint: [[Int]] = []
    
    for _ in 0..<input {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        
        hint.append(input)
    }
    
    return hint
}

let input = Int(readLine()!)!
let hint: [[Int]] = readLintHint() // [[123, 1, 1], [356, 1, 0], [327, 2, 0], [489, 0, 1]]

var result: Int = 0
var strikeCount = 0
var ballCount = 0

for A in 1...9 {
    for B in 1...9 {
        for C in 1...9 {
            
            if (A == B || B == C || C == A) {
                continue
            }
            
            var cnt = 0
            
            for arr in hint { // 123, 1, 1
                
                let number = String(arr[0]).map { Int(String($0))! } // 123
                let strike = arr[1] // 1
                let ball = arr[2] //  1
                
                for i in 0..<3 {
                    if number[i] == [A, B, C][i] {
                        strikeCount += 1
                    }
                }
                
                for i in 0..<3 {
                    if [A, B, C].contains(number[i]) && number[i] != [A, B, C][i] {
                        ballCount += 1
                    }
                }
                
                if strikeCount == strike && ballCount == ball {
                    cnt += 1
                }
                
                strikeCount = 0
                ballCount = 0
            }
            
            if cnt == input {
                result += 1
            }
        }
    }
}

print(result)
