import Foundation

func solution(_ priorities: [Int], _ location: Int) -> Int {
    
    var result: [(Int, Int)] = []
    var tuple = priorities.enumerated().map { ($0.offset, $0.element) }  // (0, 2) (1, 1) (2, 3) (3, 2)
    
    while !tuple.isEmpty {
        
        var maxValue = tuple.max(by: { $0.1 < $1.1 })!.1 // whlie 조건에서 항상 하나 이상의 값을 가짐
        
        if let first = tuple.first?.1, first == maxValue {
            result.append(tuple.removeFirst())
        } else {
            tuple.append(tuple.removeFirst())
        }
    }
    
    return (result.enumerated().first(where: { $0.element.0 == location })?.offset ?? 0) + 1
}
