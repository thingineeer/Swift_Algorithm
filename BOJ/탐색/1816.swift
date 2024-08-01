// 완전 탐색
// 1816번

import Foundation

let input = Int(readLine()!)!

for _ in 0..<input {
    let input = Int(readLine()!)! // 1000036000099
    
    for i in 2...1000000 {
        if input % i == 0 { // 100만 이하의 약수가 존재한다.
            print("NO")
            break
        }
        
        if i == 1000000 { // 100만 이하의 약수가 존재하지 않는다.
            print("YES")
        }
    }
}
