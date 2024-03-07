//
//  1966.swift
//  프린터 큐
//
//  Created by 이명진 on 3/7/24.
//

import Foundation

let x = Int(readLine()!)!

for _ in 0..<x {
    
    var q: [Int] = readLine()!.split(separator: " ").compactMap { Int($0) }
    var priority: [Int] = readLine()!.split(separator: " ").compactMap { Int($0) }
    var ind = Array(0..<q[0])
    var cnt: Int = 0
    
    while !priority.isEmpty {
        var maxValue = priority.max()!
        
        if let firstElement = priority.first, firstElement < maxValue {
            priority.append(priority.removeFirst())
            ind.append(ind.removeFirst())
        } else {
            priority.removeFirst()
            cnt += 1
            if ind.removeFirst() == q[1] {
                print(cnt)
                break
            }
        }
    }
}
