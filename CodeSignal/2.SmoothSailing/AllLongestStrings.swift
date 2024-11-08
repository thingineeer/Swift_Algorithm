func solution(inputArray: [String]) -> [String] {
    var standard = 0
    
    for i in inputArray {
        standard = max(standard, i.count)
    }
    
    return inputArray.filter { $0.count == standard }
}
