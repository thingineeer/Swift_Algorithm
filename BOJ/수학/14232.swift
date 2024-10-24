//
//  14232.swift
//  보석 도둑 S1, 에라토스테네스의 체
//
//  Created by 이명진 on 10/24/24.
//

import Foundation

func sieveOfEratosthenes(_ n: Int) -> [Int] {
    var isPrime = [Bool](repeating: true, count: n + 1)
    isPrime[0] = false
    isPrime[1] = false
    
    for i in 2...n {
        if isPrime[i] {
            for multiple in stride(from: i * i, through: n, by: i) {
                isPrime[multiple] = false
            }
        }
    }
    
    return (2...n).filter { isPrime[$0] }
}

let input = Int(readLine()!)!
var result: [Int] = []

var jewel = input
let primes = sieveOfEratosthenes(Int(pow(Double(input), 0.5))) // 메모리 줄이기 위해 시작 부터 루트 씌어줌

for prime in primes { // 거른 소수 들로 나눠 줍니다.
    while jewel % prime == 0 {
        result.append(prime)
        jewel /= prime
    }
}

if jewel > 1 { // 보석의 무게가 1보다 크면 해당 보석을 추가 해 줍니다. (하나도 안나눠줬다는 말이니까)
    result.append(jewel)
}


// 결과 도출
print(result.count)
result.forEach {
    print($0, terminator: " ")
}
