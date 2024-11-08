func solution(a: [Int]) -> [Int] {
    
    var arr = Array(repeating: 0, count: a.count)
    var temp: [Int] = []
    
    for i in 0..<a.count {
        if a[i] == -1 {
            arr[i] -= 1
        } else {
            temp.append(a[i])
        }
    }
    
    temp.sort()
    
    for i in 0..<a.count {
        if a[i] != -1 {
            arr[i] += temp.removeFirst()
        }
    }
    
    return arr
}
