//
//  145. Binary Tree Postorder Traversal.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

struct Command {
    var string: String
    var node: TreeNode
}

func postorderTraversal(_ root: TreeNode?) -> [Int] {
    var res = [Int]()
    var stack = [Command]()
    if let node = root {
        stack.append(Command(string: "go", node: node))
    }
    while !stack.isEmpty {
        let command = stack.last
        stack.removeLast()
        if command?.string == "print" {
            res.append(command!.node.val)
        } else {
            stack.append(Command(string: "print", node: command!.node))
            if command?.node.right != nil {
                stack.append(Command(string: "go", node: command!.node.right!))
            }
            if command?.node.left != nil {
                stack.append(Command(string: "go", node: command!.node.left!))
            }
        }
    }
    return res
}
