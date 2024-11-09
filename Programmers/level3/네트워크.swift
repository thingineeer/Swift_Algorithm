//
//  네트워크.swift
//  DFS - level3
//
//  Created by 이명진 on 11/10/24.
//

import Foundation

func solution(_ n: Int, _ computers: [[Int]]) -> Int {
    
    var graph = Array(repeating: [Int](), count: n + 1)
    var visited = Array(repeating: false, count: n + 1)
    var result: Int = 0

    for i in 0..<n {
        for j in 0..<n {
            if computers[i][j] == 1 && i != j {
                graph[i + 1].append(j + 1)
            }
        }
    }
    
    func dfs(_ node: Int) {
        visited[node] = true
        
        for next in graph[node] {
            if !visited[next] {
                dfs(next)
            }
        }
    }
    
    for i in 1...n {
        if !visited[i] {
            result += 1
            dfs(i)
        }
    }
    
    return result
}
