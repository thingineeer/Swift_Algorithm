func solution(a: [Int]) -> [Int] {
    var result = [0, 0]
    
    for (idx, element) in a.enumerated() {
        if idx % 2 == 0 { // even
            result[0] += element
        } else { // odd
            result[1] += element
        }
    }
    
    return result
}

