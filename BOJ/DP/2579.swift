import Foundation

let N =  Int(readLine()!)!
var S: [Int] = []
var dp: [Int] = Array(repeating: 0, count: N)

for _ in 0..<N {
    let element = Int(readLine()!)!
    S.append(element)
}

dp[0] = S[0]

if N == 1 {
    print(dp[0])
} else if N == 2 {
    dp[1] = S[0] + S[1]
    print(dp[1])
} else {
    dp[1] = S[0] + S[1]
    dp[2] = max(S[0] + S[2], S[1] + S[2])
    
    for i in 3..<N {
        dp[i] = S[i] + max(S[i-1] + dp[i-3], dp[i-2])
    }
    
    print(dp[N-1])
}




//6
//10
//20
//15
//25
//10
//20
