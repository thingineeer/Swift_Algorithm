//
//  중복된 숫자 개수.swift
//  practice
//
//  Created by 이명진 on 10/20/23.
//

import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    let p = array.filter { ($0) == n }.count
    return p
}
