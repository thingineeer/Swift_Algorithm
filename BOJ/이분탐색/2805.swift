//
//  2805.swift
//  나무 자르기 - S2
//
//  Created by 이명진 on 11/15/24.
//
//  이분 탐색

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let m = input[1]

let trees = readLine()!.split(separator: " ").map { Int($0)! }.sorted()

var start = 1
var end = trees.max()!

while start <= end {
    let mid = (start + end) / 2
    
    var result = 0
    for tree in trees {
        if tree >= mid {
            result += tree - mid
        }
    }
    
    if result >= m {
        start = mid + 1
    } else {
        end = mid - 1
    }
}

print(end)
