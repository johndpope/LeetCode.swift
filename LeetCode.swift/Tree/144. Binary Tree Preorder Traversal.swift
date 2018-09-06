//
//  144. Binary Tree Preorder Traversal.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func preorderTraversal(_ root: TreeNode?) -> [Int] {
    var res = [Int]()
    var stack = [TreeNode]()
    if let node = root {
        stack.append(node)
    }
    while !stack.isEmpty {
        let node = stack.last
        stack.removeLast()
        res.append(node!.val)
        if node?.right != nil {
            stack.append(node!.right!)
        }
        if node?.left != nil {
            stack.append(node!.left!)
        }
    }
    return res
}

//func preorderTraversal(_ root: TreeNode?) -> [Int] {
//    var arr = [Int]()
//    let node = root
//    while node != nil {
//        arr.append(node!.val)
//        arr.append(contentsOf: preorderTraversal(node?.left))
//        arr.append(contentsOf: preorderTraversal(node?.right))
//    }
//    return arr
//}

//func preorderTraversal(root: TreeNode?) -> [Int] {
//    var res = [Int]()
//    var stack = [TreeNode]()
//    var node = root
//    while !stack.isEmpty || node != nil {
//        if node != nil {
//            stack.append(node!)
//            res.append(node!.val)
//            node = node!.left
//        } else {
//            node = stack.last?.right
//            stack.removeLast()
//        }
//    }
//    return res
//}
