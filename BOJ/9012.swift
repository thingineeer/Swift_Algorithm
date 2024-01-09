import Foundation

// 강제 언래핑이 아닌 flatMap과 바인딩으로 언래핑 
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

//let x = Int(readLine()!)!
//
//for _ in 0..<x {
//    var count: Int = 0
//    let nums = Array(readLine()!).map {String($0)}
//    for num in nums {
//        if num == "(" {
//            count += 1
//        } else {
//            count -= 1
//            if count < 0 {
//                break
//            }
//        }
//    }
//    
//    count == 0 ? print("YES") : print("NO")
//}
