func solution(s1: String, s2: String) -> Int {
    var result: Int = 0
    
    var mutableS2 = s2.map { $0 }

    for str in s1 {
        for j in 0..<mutableS2.count {
            if str == mutableS2[j] {
                result += 1
                mutableS2.remove(at: j)
                break
            }
        }
    }
    
    return result
}
