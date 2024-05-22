/// https://www.acmicpc.net/problem/1991

import Foundation

struct Node {
    let middle: String
    let leftNode: String
    let rightNode: String
}

func preOrderTraversal(node: Node) {
    print(node.middle, terminator: "")
    if node.leftNode != "." {
        preOrderTraversal(node: tree[node.leftNode]!)
    }
    if node.rightNode != "." {
        preOrderTraversal(node: tree[node.rightNode]!)
    }
}

func inOrderTraversal(node: Node) {
    if node.leftNode != "." {
        inOrderTraversal(node: tree[node.leftNode]!)
    }
    print(node.middle, terminator: "")
    if node.rightNode != "." {
        inOrderTraversal(node: tree[node.rightNode]!)
    }
}

func postOrderTraversal(node: Node) {
    if node.leftNode != "." {
        postOrderTraversal(node: tree[node.leftNode]!)
    }
    if node.rightNode != "." {
        postOrderTraversal(node: tree[node.rightNode]!)
    }
    print(node.middle, terminator: "")
}


let n = Int(readLine()!)!
var tree: [String: Node] = [:]

for _ in 0..<n {
    let nodes = readLine()!.split(separator: " ")
    tree[String(nodes[0])] = Node(
        middle: String(nodes[0]),
        leftNode: String(nodes[1]),
        rightNode: String(nodes[2])
    )
}


let startNode = tree["A"]!
preOrderTraversal(node: startNode)
print()
inOrderTraversal(node: startNode)
print()
postOrderTraversal(node: startNode)
