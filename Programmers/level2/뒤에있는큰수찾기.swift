import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var result: [Int] = []
    
    for i in 0...numbers.count - 2 {
        for j in i+1...numbers.count - 1 {
            if numbers[i] < numbers[j] {
                result.append(numbers[j])
                break
            }
            
            if j == numbers.count - 1 {
                result.append(-1)
                break
            }
        }
    }
    result.append(-1)
    
    return result
}
