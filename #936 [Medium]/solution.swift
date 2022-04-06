/*
 Given a binary search tree and a range [a, b] (inclusive), return the sum of the elements of the binary search tree within the range.

 For example, given the following tree:

         5
        / \
       3   8
      / \ / \
     2  4 6  10
 
 and the range [4, 9], return 23 (5 + 4 + 6 + 8).
 */

import Foundation

class Node {
    var value: Int
    var left: Node?
    var right: Node?
    
    init(value: Int){
        self.value = value
    }
}


var sum = 0
var min = 4
var max = 9

func traverseInorder(node: Node?){
    // Left
    if let left = node?.left {
        traverseInorder(node: left)
    }
    
    // Root
    if let value = node?.value, value <= max, value >= min {
        sum += value
    }
    
    // Right
    if let right = node?.right {
        traverseInorder(node: right)
    }
}

let root = Node(value: 5)
let nodeOne = Node(value: 3)
let nodeTwo = Node(value: 8)
let nodethree = Node(value: 2)
let nodeFour = Node(value: 4)
let nodeFive = Node(value: 6)
let nodeSix = Node(value: 10)

root.left = nodeOne
root.right = nodeTwo
nodeOne.left = nodethree
nodeOne.right = nodeFour
nodeTwo.left = nodeFive
nodeTwo.right = nodeSix

traverseInorder(node: root)
print("sum = \(sum)")
