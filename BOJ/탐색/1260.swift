/// https://www.acmicpc.net/problem/1260
import Foundation

let input = readLine()!.components(separatedBy: " ").map { Int(String($0))! }

let N = input[0]
let M = input[1]
let V = input[2]

var graph: [[Int]] = Array(repeating: [], count: N+1)
var visited = [Bool](repeating: false, count: graph.count)
var queue: [Int] = []

for _ in 0..<M {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    graph[input[0]].append(input[1])
    graph[input[1]].append(input[0])
}

for i in 0..<N+1 {
    graph[i].sort()
}

func dfs(v: Int, graph: [[Int]], visited: inout [Bool]) {
    visited[v] = true
    print(v, terminator: " ")
    
    for i in graph[v] {
        if !visited[i] {
            dfs(v: i, graph: graph, visited: &visited)
        }
    }
}

func bfs(v: Int, graph: [[Int]], visited: inout [Bool]) {
    
    visited[v] = true
    queue.append(v)
    
    while !queue.isEmpty {
        let x = queue.removeFirst()
        print(x, terminator: " ")
        
        for i in graph[x] {
            if !visited[i] {
                queue.append(i)
                visited[i] = true
            }
        }
    }
}

dfs(v: V ,graph: graph, visited: &visited)
print()

visited = [Bool](repeating: false, count: graph.count)
bfs(v: V ,graph: graph, visited: &visited)
