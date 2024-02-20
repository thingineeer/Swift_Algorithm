//
//  소인수분해.swift
//  B1
//
//  Created by 이명진 on 4/10/24.
//

var N = Int(readLine()!)!
var i = 2

while N != 1 {
    if N % i == 0 {
        N /= i
        print(i)
    } else {
        i += 1
    }
}
