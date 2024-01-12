import Foundation

var stack: [String] = []

enum Command: String {
    case push
    case pop
    case size
    case empty
    case top
}

let x = Int(readLine()!)!

for _ in 0..<x {
    let input = readLine()!.split(separator: " ").map { String($0) }
    
    guard let command = Command(rawValue: input[0]) else {
        fatalError("Error")
    }
    
    switch command {
    case .push:
        stack.append(input[1])
    case .pop:
        print(stack.isEmpty ? "-1" : stack.removeLast())
    case .size:
        print(stack.count)
    case .empty:
        print(stack.isEmpty ? "1" : "0")
    case .top:
        print(stack.isEmpty ? "-1" : stack.last!)
    }
}
