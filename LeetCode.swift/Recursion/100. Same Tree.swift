//
//  100. Same Tree.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

//100 ???
func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
    if p?.val != q?.val {
        return false
    } else {
        if p?.val == nil && q?.val == nil {
            return true
        } else {
            return isSameTree(p?.left,q?.left) && isSameTree(p?.right,q?.right)
        }
    }
}
