import Foundation

func solution(_ num:Int, _ total:Int) -> [Int] {
    var arr: [Int] = []
    var sum = (num * (num - 1)) / 2
    var a = (total - sum) / num
    for i in a..<(a+num) {
        arr.append(i)
    }
    return arr
}
