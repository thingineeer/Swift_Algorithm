import Foundation

func solution(_ k: Int, _ score:[Int]) -> [Int] {
    var rank: [Int] = []
    var result: [Int] = []
    
    for i in score {
        rank.append(i)
        
        if rank.count <= k {
            result.append(rank.min()!)
        } else {
            if rank.min()! <= i {
                rank.sort()
                rank.removeFirst()
                result.append(rank[0])
            } else {
                result.removeLast()
            }
        }
    }
    
    return result
}
