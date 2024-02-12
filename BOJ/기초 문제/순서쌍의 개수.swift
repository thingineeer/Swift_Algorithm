import Foundation

func solution(_ n:Int) -> Int {
    var total: Int = 0
    for i in 1...Int(sqrt(Double(n))) {
        if n % i == 0 {
            total += 1
        }
    }
    total *= 2
    total -= Double(Int(sqrt(Double(n)))) == sqrt(Double(n)) ? 1 : 0
    return total
}
