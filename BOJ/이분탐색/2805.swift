import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]
let forest = readLine()!.split(separator: " ").map { Int($0)! }

var s = 0
var e = forest.max()!

while s <= e {
    let mid = (s + e) / 2

    var wood = 0
    for tree in forest {
        if tree >= mid {
            wood += tree - mid
        }
    }

    if wood >= M {
        s = mid + 1
    } else {
        e = mid - 1
    }
}

print(e)
