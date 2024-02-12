import Foundation

func solution(_ numbers:[Int]) -> Double {
    var avg = 0
    numbers.map {
        avg += $0
    }
    
    return Double(avg) / Double(numbers.count)
}
