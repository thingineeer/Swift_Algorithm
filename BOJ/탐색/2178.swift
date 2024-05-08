/// 2178 미로 탐색
import Foundation

private func bfs(_ x: Int, _ y: Int) -> Int {
    
    queue.append((x, y))
    
    while !queue.isEmpty {
        
        let temp = queue.removeFirst()
        let x = temp.0
        let y = temp.1
        
        for i in 0..<4 {
            let nx = x + dx[i]
            let ny = y + dy[i]
            
            if nx < 0 || nx >= N || ny < 0 || ny >= M {
                continue
            }
            
            if graph[nx][ny] == 1 {
                graph[nx][ny] = graph[x][y] + 1
                queue.append((nx, ny))
            }
        }
    }
    
    return graph[N - 1][M - 1]
}

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0]
let M = input[1]

var graph: [[Int]] = []

var queue: [(Int, Int)] = []

let dx = [-1, 1, 0, 0]
let dy = [0, 0, -1, 1]

for _ in 0..<N {
    let input = readLine()!.map { Int(String($0))! }
    graph.append(input)
}

print(bfs(0, 0))



