//
//  귤고르기.swift
//  정렬 - level2
//
//  Created by 이명진 on 10/28/24.
//


import Foundation

func solution(_ k: Int, _ tangerine: [Int]) -> Int {
    
    let dict = Dictionary(grouping: tangerine) { $0 }.values
        .sorted { $0.count > $1.count }
        .flatMap { $0 }
        .prefix(k)

    let resultSetCount = Set(dict).count
    
    return resultSetCount
}
