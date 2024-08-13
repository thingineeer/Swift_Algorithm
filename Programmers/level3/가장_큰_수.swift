// 가장 큰 수.swift level2

import Foundation

func solution(_ numbers: [Int]) -> String {
    
    let num = numbers.map { (String($0) + String($0) + String($0), String($0)) }.sorted { $0.0 > $1.0 }.map { $1 }
    
    var result = ""
    
    for str in num {
        result += str
    }
    
    return result.first == "0" ? "0" : result
}
