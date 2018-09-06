//
//  101. Symmetric Tree.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

//101 ???
func isSymmetric(_ root: TreeNode?) -> Bool {
    if root == nil {
        return true
    }
    return symmetric(p: root?.left, q: root?.right)
}

func symmetric(p: TreeNode?, q: TreeNode?) -> Bool {
    if p == nil && q == nil {
        return true
    }
    if p == nil || q == nil {
        return false
    }
    return p?.val == q?.val && symmetric(p: p?.left, q: q?.right) && symmetric(p: p?.right, q: q?.left)
}
