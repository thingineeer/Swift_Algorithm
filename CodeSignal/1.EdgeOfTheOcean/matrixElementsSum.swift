func solution(matrix: [[Int]]) -> Int {
    var result = 0
    
    let row = matrix.count // 가로줄의 갯수, 행의 수
    let col = matrix[0].count // 세로줄의 갯수, 열의 수
    
    for i in 0..<col { // 0~2
        for j in 0..<row { // 0~3
            if matrix[j][i] != 0 {
                result += matrix[j][i]
            } else {
                break
            }
        }
    }
    return result
}
