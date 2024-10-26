/// https://www.acmicpc.net/problem/1260
//
//  1260.swift
//  DFS와 BFS - S2
//
//  Created by 이명진 on 10/27/24.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]
let V = input[2]

var graph: [[Int]] = Array(repeating: [], count: N + 1)
var visited = Array(repeating: false, count: N + 1)

for _ in 0..<M {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    graph[input[0]].append(input[1])
    graph[input[1]].append(input[0])
}

for i in 0..<N+1 {
    graph[i].sort()
}

func dfs(v: Int, visited: inout [Bool], graph: [[Int]]) {
    
    visited[v] = true
    print(v, terminator: " ")
    
    for i in graph[v] {
        if !visited[i] {
            dfs(v: i, visited: &visited, graph: graph)
        }
    }
}

func bfs(V: Int, visited: inout [Bool], graph: [[Int]]) {
    visited[V] = true
    
    var queue: [Int] = [V]
    
    while !queue.isEmpty {
        let v = queue.removeFirst()
        
        print(v, terminator: " ")
        
        for i in graph[v] {
            if !visited[i] {
                queue.append(i)
                visited[i] = true
            }
        }
    }
}

dfs(v: V, visited: &visited, graph: graph)

visited = Array(repeating: false, count: N + 1)
print()

bfs(V: V, visited: &visited, graph: graph)
