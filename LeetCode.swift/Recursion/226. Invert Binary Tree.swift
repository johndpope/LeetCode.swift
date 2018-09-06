//
//  226. Invert Binary Tree.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func invertTree(_ root: TreeNode?) -> TreeNode? {
    if root == nil { return nil }
    let left = invertTree(root?.left)
    let right = invertTree(root?.right)
    root?.left = right
    root?.right = left
    return root
}
