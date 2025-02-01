// 프로그래머스 level3, 그리디, 구현, 투포인터(?)

import Foundation

func solution(_ A: [Int], _ B: [Int]) -> Int {
    let ASort = A.sorted()
    let BSort = B.sorted()
    
    var aIndex = 0
    var bIndex = 0
    var score = 0
    
    while aIndex < ASort.count && bIndex < BSort.count {
        if BSort[bIndex] > ASort[aIndex] { // B팀이 A팀을 이길때
            score += 1
            aIndex += 1  // A팀 다음 선수로
        }
        bIndex += 1  // B팀은 다음 선수로 (이기든 지든)
    }
    
    return score
}
