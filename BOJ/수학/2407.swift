//
//  2407.swift
//  조합
//
//  Created by 이명진 on 4/9/24.
//

import Foundation

func combination(_ n: Int, _ m: Int) -> Decimal {
    var result = Decimal(1)
    let m = min(m, n - m)  // C(n, m)은 C(n, n-m)과 동일하므로 작은 값으로 계산
    if m == 0 {
        return 1
    }
    for i in 1...m {
        result *= Decimal(n - i + 1)
        result /= Decimal(i)
    }
    return result
}

func combinationDP(N: Int, M: Int) -> Decimal {
    var dp = Array(repeating: Array(repeating: Decimal(0), count: M+1), count: N+1)

    // C(n, 0) = 1, C(n, n) = 1
    for i in 0...N {
        dp[i][0] = 1
        if i <= M { dp[i][i] = 1 }
    }

    for i in 1...N {
        for j in 1...min(i, M) {
            if j != i {
                dp[i][j] = dp[i-1][j-1] + dp[i-1][j]
                // C(n, m) = C(n−1, m−1) + C(n−1, m)
            }
        }
    }

    return dp[N][M]
    // dp = [[1, 0, 0, 0], [1, 1, 0, 0], [1, 2, 1, 0], [1, 3, 3, 1], [1, 4, 6, 4], [1, 5, 10, 10]]
    // dp[5][3] = 10
}

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0]
let M = input[1]

print(combinationDP(N: N, M: M))


