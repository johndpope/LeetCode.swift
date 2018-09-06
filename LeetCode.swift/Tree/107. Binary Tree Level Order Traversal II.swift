//
//  107. Binary Tree Level Order Traversal II.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
    var res = [[Int]]()
    var stack = [LevelCommand]()
    if let node = root {
        stack.append(LevelCommand(level: 0, string: "go", node: node))
    }
    while !stack.isEmpty {
        let command = stack.last
        stack.removeLast()
        if command?.string == "print" {
            if res.indices.contains(command!.level) {
                res[command!.level].append(command!.node.val)
            } else {
                res.insert([command!.node.val], at: command!.level)
            }
        } else {
            if command?.node.right != nil {
                stack.append(LevelCommand(level: command!.level+1, string: "go", node: command!.node.right!))
            }
            if command?.node.left != nil {
                stack.append(LevelCommand(level: command!.level+1, string: "go", node: command!.node.left!))
            }
            stack.append(LevelCommand(level: command!.level, string: "print", node: command!.node))
        }
    }
    return res.reversed()
}
