func solution(picture: [String]) -> [String] {
    let pCount = picture[0].count
    var result: [String] = []
    
    for i in picture {
        result.append("*" + i + "*")
    }
    
    let newElement = Array(repeating: "*", count: pCount + 2).joined()
    
    result.insert(newElement, at: 0)
    result.append(newElement)
    
    return result
}
