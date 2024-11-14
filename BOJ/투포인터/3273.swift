//
//  3273.swift
//  두 수의 합 - S3
//
//  Created by 이명진 on 11/15/24.
//
//

let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
let target = Int(readLine()!)!

var left = 0
var right = n - 1
var result = 0

while left < right {
    if arr[left] + arr[right] == target {
        result += 1
    }
    
    if arr[left] + arr[right] < target {
        left += 1
    } else {
        right -= 1
    }
}

print(result)
