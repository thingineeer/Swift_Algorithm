func solution(statues: [Int]) -> Int {
    let minValue = statues.min()!
    let maxValue = statues.max()!
    var result: Int = 0
    
    for i in minValue...maxValue {
        if !statues.contains(i) {
            result += 1
        }
    }
    
    return result
}
