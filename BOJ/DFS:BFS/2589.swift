//
//  2589.swift
//  보물선 - G5
//
//  Created by 이명진 on 11/11/24.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]

var maxi: Int = 0

var graph: [[String]] = []

for _ in 0..<N {
    let input = Array(readLine()!).map { String($0) } // 문자열을 한 글자씩 배열로 변환
    graph.append(input)
}

// O((N*M)^2)
// (50*50)^2 = 최대 6,250,000
for i in 0..<N {
    for j in 0..<M {
        if graph[i][j] == "L" {
            var visited = Array(repeating: Array(repeating: false, count: M), count: N)
            var dist = Array(repeating: Array(repeating: 0, count: M), count: N)
            
            var q: [(Int, Int)] = []
            
            q.append((i, j))
            visited[i][j] = true
            
            while !q.isEmpty {
                let (x, y) = q.removeFirst()
                
                for (dx, dy) in [(0, 1), (1, 0), (-1, 0), (0, -1)] {
                    let nx = x + dx
                    let ny = y + dy
                    
                    if nx < 0 || nx >= N || ny < 0 || ny >= M {
                        continue
                    }
                    
                    if graph[nx][ny] == "L" && !visited[nx][ny] {
                        visited[nx][ny] = true
                        dist[nx][ny] = dist[x][y] + 1
                        maxi = max(maxi, dist[nx][ny])
                        q.append((nx, ny))
                    }
                }
            }
        }
    }
}

print(maxi)

