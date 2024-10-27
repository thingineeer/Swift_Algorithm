import Foundation
 
if let x = readLine().flatMap({ Int($0) }) {
    for _ in 0..<x {
        var count = 0
        if let nums = readLine() {
            for num in nums {
                if num == "(" {
                    count += 1
                } else {
                    count -= 1
                    if count < 0 {
                        break
                    }
                }
            }

            print(count == 0 ? "YES" : "NO")
        }
    }
}
