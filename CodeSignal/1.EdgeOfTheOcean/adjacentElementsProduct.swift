func solution(inputArray: [Int]) -> Int {
    var result: Int = -1000
    
    for i in 0..<inputArray.count-1 {
        result = max(result, inputArray[i] * inputArray[i+1])
    }
    
    return result
    
}
