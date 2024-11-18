//
//  22988.swift
//  재활용 캠페인 - G2
//
//  Created by 이명진 on 11/15/24.
//
//  투포인터

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let x = input[1]

let bottle = readLine()!.split(separator: " ").map { Int($0)! }.sorted()

// 최대 용량 보다 크거나 같다면(클 일은 없음) 그냥 count += 1 하고 right -= 1 해주기

// 헤어에센스를 교환해서 "용량이 꽉 찬", "즉, X mL가 담겨 있는 헤어에센스 용기"를 "최대한 많이" 만들고 싶다.

// 두병을 합쳐서 x / 2 이상이라면 그 두병을 합치면 하나의 완벽한 병이 된다!

// 하나가 x mL 라면 그거 자체가 헤어에센스 용기가 된다.

// 가장 좋은건 x / 2에 가깝게 합치는게 좋다! 효율적이게 !!

// 예를 들어 8이랑 가능한 작은 수랑 합쳐야 효율적 !

// 두개의 용량을 합쳐서 만약에 x/2 이상이면 count += 1 하고 왼쪽오른쪽 가운데로 몰아주기

var left = 0
var right = bottle.count - 1
var result = 0
var remain = 0

while left <= right {
    
    if bottle[right] == x {
        result += 1
        left += 1
        right -= 1
        continue
    }
    
    if left == right {
        remain += 1
        break
    }
    
    if Double(bottle[left] + bottle[right]) >= Double(x) / 2 {
        result += 1
        left += 1
        right -= 1
    } else {
        left += 1
        remain += 1
    }
}

print(result + Int(remain / 3))
