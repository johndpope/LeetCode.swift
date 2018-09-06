//
//  110. Balanced Binary Tree.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

//110 ???
func isBalanced(_ root: TreeNode?) -> Bool {
    if root == nil { return true }
    if abs(maxDepth(root?.left) - maxDepth(root?.right)) > 1 {
        return false
    }
    return isBalanced(root?.left) && isBalanced(root?.right)
}
