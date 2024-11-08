func solution(n: Int) -> Bool {
    
    let arr = String(n).map { Int(String($0))! }
    let half = arr.count / 2
    
    return arr[0..<half].reduce(0, +) == arr[half...].reduce(0, +)
}
