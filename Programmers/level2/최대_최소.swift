func solution(_ s: String) -> String {
    let s = s.components(separatedBy: " ").map { Int($0)! }
    return "\(s.min()!) \(s.max()!)"
}
