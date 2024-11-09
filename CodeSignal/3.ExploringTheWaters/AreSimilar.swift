// 문제가 엄청 모호한 문제 ...
func solution(a: [Int], b: [Int]) -> Bool {
    if a.sorted() != b.sorted() {
        return false
    }
    
    let differences = zip(a, b).filter { $0 != $1 }
    
    return differences.count == 0 || (differences.count == 2 && differences[0] == (differences[1].1, differences[1].0))
}
