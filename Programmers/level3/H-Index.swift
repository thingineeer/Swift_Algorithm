// level 2
// 정확성: 87.5 -> 100 개선

import Foundation

func solution(_ citations: [Int]) -> Int {
    
    var HIndex = -1
    
    for i in citations.sorted(by: >) {
        HIndex = max(HIndex, min(i, citations.filter({ $0 >= i }).count))
    }
    
    return HIndex
}
