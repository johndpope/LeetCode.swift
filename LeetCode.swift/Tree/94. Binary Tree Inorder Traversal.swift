//
//  94. Binary Tree Inorder Traversal.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func inorderTraversal(_ root: TreeNode?) -> [Int] {
    var res = [Int]()
    var stack = [TreeNode]()
    var node = root
    while !stack.isEmpty || node != nil {
        if node != nil {
            stack.append(node!)
            node = node!.left
        } else {
            res.append(stack.last!.val)
            node = stack.last?.right
            stack.removeLast()
        }
    }
    return res
}
