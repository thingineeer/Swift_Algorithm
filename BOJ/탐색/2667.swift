/// https://www.acmicpc.net/problem/2667

import Foundation

let N = Int(readLine()!)!
var graph: [[Int]] = []
for _ in 0..<N {
    let input = readLine()!.map { Int(String($0))! }
    graph.append(input)
}

var counter: [Int] = []
var result = 0
var temp: [Int] = []

func dfs(x: Int, y: Int, graph: inout [[Int]]) -> Bool {
    if x <= -1 || x >= N || y <= -1 || y >= N {
        return false
    }
    
    if graph[x][y] == 1 {
        graph[x][y] = 0
        
        temp.append(0) // 0이라는 숫자를 넣어서 temp의 0의 갯수에 따라 몇개의 영역인지 구분
        dfs(x: x-1, y: y, graph: &graph)
        dfs(x: x+1, y: y, graph: &graph)
        dfs(x: x, y: y-1, graph: &graph)
        dfs(x: x, y: y+1, graph: &graph)
        return true
    }
    
    
    return false
}

for i in 0..<N {
    for j in 0..<N {
        if dfs(x: i, y: j, graph: &graph) == true {
            result += 1 // 하나의 큰 영역이 종료, += 1
            counter.append(temp.count) // 그때의 temp에 0의 갯수
            temp = [] // temp 원소의 갯수 초기화
        }
    }
}

print(result)
let a = counter.sorted() // 작은 순서대로 정렬
for i in 0..<counter.count {
    print(a[i])
}
