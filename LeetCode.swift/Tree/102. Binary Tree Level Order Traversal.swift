//
//  102. Binary Tree Level Order Traversal.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func levelOrder(_ root: TreeNode?) -> [[Int]] {
    guard let root = root else {
        return []
    }
    var result = [[TreeNode]]()
    var level = [TreeNode]()
    
    level.append(root)
    while level.count != 0 {
        result.append(level)
        var nextLevel = [TreeNode]()
        for node in level {
            if let leftNode = node.left {
                nextLevel.append(leftNode)
            }
            if let rightNode = node.right {
                nextLevel.append(rightNode)
            }
        }
        level = nextLevel
    }
    
    let ans = result.map { $0.map { $0.val }}
    return ans
}

//func levelOrder(_ root: TreeNode?) -> [[Int]] { // 層序遍歷
//    var res = [[Int]]()
//    var queue = Queue(array: [LevelCommand]())
//    if let node = root {
//        queue.enqueue(LevelCommand(level: 0, string: "", node: node))
//    }
//    while !queue.isEmpty {
//        let command = queue.front
//        queue.dequeue()
//        if res.indices.contains(command!.level) {
//            res[command!.level].append(command!.node.val)
//        } else {
//            res.insert([command!.node.val], at: command!.level)
//        }
//        if command!.node.left != nil {
//            queue.enqueue(LevelCommand(level: command!.level+1, string: "", node: command!.node.left!))
//        }
//        if command!.node.right != nil {
//            queue.enqueue(LevelCommand(level: command!.level+1, string: "", node: command!.node.right!))
//        }
//    }
//    return res
//}

//func levelOrder(_ root: TreeNode?) -> [[Int]] {
//    var res = [[Int]]()
//    var stack = [LevelCommand]()
//    if let node = root {
//        stack.append(LevelCommand(level: 0, string: "go", node: node))
//    }
//    while !stack.isEmpty {
//        let command = stack.last
//        stack.removeLast()
//        if command?.string == "print" {
//            if res.indices.contains(command!.level) {
//                res[command!.level].append(command!.node.val)
//            } else {
//                res.insert([command!.node.val], at: command!.level)
//            }
//        } else {
//            if command?.node.right != nil {
//                stack.append(LevelCommand(level: command!.level+1, string: "go", node: command!.node.right!))
//            }
//            if command?.node.left != nil {
//                stack.append(LevelCommand(level: command!.level+1, string: "go", node: command!.node.left!))
//            }
//            stack.append(LevelCommand(level: command!.level, string: "print", node: command!.node))
//        }
//    }
//    return res
//}
