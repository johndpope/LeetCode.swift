//
//  113. Path Sum II.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

//113 ???
//func pathSum(_ root: TreeNode?, _ sum: Int) -> [[Int]] {
//    if root == nil { return [] }
//    if root != nil && root?.left == nil && root?.right == nil && root!.val == sum {
//        return [[root!.val]]
//    }
//    var res = [[Int]]()
//    let arr0 = pathSum(root?.left, sum-root!.val)
//    if arr0.count == 1 {
//        arr0[0].insert(root!.val, at: 0)
//        res = arr0
//    } else if arr0.count > 1 {
//        for arr in arr0 {
//            <#code#>
//        }
//    }
//}
