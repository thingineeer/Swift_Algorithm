//
//  행렬의곱셈.swift
//  브루트포스 - level2
//
//  Created by 이명진 on 10/31/24.
//

import Foundation

func solution(_ arr1: [[Int]], _ arr2: [[Int]]) -> [[Int]] {
    
    var result: [[Int]] = Array(repeating: Array(repeating: 0, count: arr2[0].count), count: arr1.count)
    
    for i in 0..<arr1.count {
        for j in 0..<arr2[0].count {
            for k in 0..<arr1[0].count {
                result[i][j] += arr1[i][k] * arr2[k][j]
            }
        }
    }
    
    return result
}
