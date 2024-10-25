//
//  2559.swift
//  수열 - S3
//
//  Created by 이명진 on 10/26/24.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]

let arr = readLine()!.split(separator: " ").map { Int($0)! }
var prefix = [Int](repeating: 0, count: N + 1)

for i in 0..<N {
    prefix[i+1] = prefix[i] + arr[i]
}

var result: [Int] = []

for i in M...N {
    result.append(prefix[i] - prefix[i-M])
}

print(result.max()!)
