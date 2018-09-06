//
//  404. Sum of Left Leaves.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

//404 ???
func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
    if root == nil { return 0 }
    if root?.left == nil && root?.right == nil {
        return root!.val
    }
    var sum = sumOfLeftLeaves(root?.left) + sumOfLeftLeaves(root?.right)
    if root?.right != nil && root?.right?.left == nil && root?.right?.right == nil {
        sum -= root!.right!.val
    }
    return sum
}
