import Foundation

func solution(_ a: Int, _ b: Int, _ n: Int) -> Int {
    var q = 0
    var m = 0
    var answer = 0
    var n = n
    
    while n >= a {
        q = n / a
        m = n % a
        n = q * b + m
        answer += q * b
    }
    
    return answer
}
