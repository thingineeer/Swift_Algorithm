// level 2
// 정확성: 87.5

import Foundation

func solution(_ citations: [Int]) -> Int {

    let minValue = citations.min()!
    let maxValue = citations.max()!

    var result = 0

    for i in minValue...maxValue {
        if (citations.filter({ $0 >= i }).count) <= i {
            result = i
            break
        }
    }
    
    return result
}

