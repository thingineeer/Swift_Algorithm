//
//  [1차] 캐시.swift
//
//  Created by 이명진 on 11/17/23.
//

import Foundation

func solution(_ cacheSize: Int, _ cities: [String]) -> Int {
    guard cacheSize > 0 else {
        return cities.count * 5
    }

    var cache = [String]()
    var result = 0

    for city in cities {
        let lowercasedCity = city.lowercased()

        if let index = cache.firstIndex(of: lowercasedCity) {
            // Cache hit
            cache.remove(at: index)
            cache.append(lowercasedCity)
            result += 1
        } else {
            // Cache miss
            if cache.count >= cacheSize {
                cache.removeFirst()
            }
            cache.append(lowercasedCity)
            result += 5
        }
    }
    return result
}
