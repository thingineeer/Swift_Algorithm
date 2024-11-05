//
//  14501.swift
//  퇴사 - S3 백트래킹, DP
//
//  Created by 이명진 on 11/5/24.
//

let N = Int(readLine()!)!
var interview: [[Int]] = []
var result = 0

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    interview.append(input)
}

func recur(ind: Int, price: Int) {

    if ind > N - 1 { // 10일이면 10일을 넘어가는지 상담 가능 한지
        if ind > N { // 11일을 넘어가는 순간 끝
            return
        }
        
        // 10일까지 갱신
        result = max(result, price)
        return
    }
    
    // 상담 할때
    recur(ind: ind + interview[ind][0], price: price + interview[ind][1])
    
    // 상담 안할때
    recur(ind: ind + 1, price: price)
}

recur(ind: 0, price: 0)
print(result)
