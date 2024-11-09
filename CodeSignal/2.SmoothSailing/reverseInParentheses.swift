func solution(inputString: String) -> String {
    
    var stack: [Int] = []
    var chars = Array(inputString)
    
    for (index, str) in inputString.enumerated() {
        if str == "(" {
            stack.append(index)
        } else if str == ")" {
            if let start = stack.popLast() {
                // 부분 문자열 뒤집기
                let subArray = chars[(start + 1)..<index].reversed()
                chars.replaceSubrange(start...index, with: Array("(\(String(subArray)))"))
            }
        }
    }
    
    return String(chars.filter { $0 != "(" && $0 != ")" })
}
