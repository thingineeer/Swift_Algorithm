// 다시 풀어보기
func solution(sequence: [Int]) -> Bool {
    var bad = 0
    for i in 1..<sequence.count {
        if sequence[i] <= sequence[i - 1] {
            bad += 1
            if bad > 1 {
                return false
            }
            if i > 1 && i < sequence.count - 1 && sequence[i] <= sequence[i - 2] && sequence[i + 1] <= sequence[i - 1] {
                return false
            }
        }
    }
    return true
}
