//
//  15. 3Sum.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

func threeSum(_ nums: [Int]) -> [[Int]] { // Time Limit Exceeded
    let combosArray = combinations(source: nums, takenBy: 3)
    var arr = [[Int]]()
    for items in combosArray {
        if items[0]+items[1]+items[2] == 0 {
            var isNew = true
            for array in arr { // 檢查過往有無出現
                var temp = array
                for i in [0, 1, 2] {
                    if temp.contains(items[i]) { temp.remove(at: temp.index(of: items[i])!) }
                }
                if temp.count == 0 { isNew = false }
            }
            if isNew { arr.append([items[0], items[1], items[2]]) }
        }
    }
    return arr
}

func combinations<T>(source: [T], takenBy : Int) -> [[T]] {
    if(source.count == takenBy) {
        return [source]
    }
    if(source.isEmpty) {
        return []
    }
    if(takenBy == 0) {
        return []
    }
    if(takenBy == 1) {
        return source.map { [$0] }
    }
    var result : [[T]] = []
    let rest = Array(source.suffix(from: 1))
    let subCombos = combinations(source: rest, takenBy: takenBy - 1)
    result += subCombos.map { [source[0]] + $0 }
    result += combinations(source: rest, takenBy: takenBy)
    return result
}

//func threeSum(_ nums: [Int]) -> [[Int]] { // Time Limit Exceeded
//    var arr = [[Int]]()
//    var i = 0
//    var j = 1
//    var k = 2
//    while k < nums.count, j < k, i < j {
//        if nums[i]+nums[j]+nums[k] == 0 {
//            var isNew = true
//            for array in arr { // 檢查過往arr有無出現
//                var temp = array
//                for l in [i, j, k] {
//                    if temp.contains(nums[l]) { temp.remove(at: temp.index(of: nums[l])!) }
//                }
//                if temp.count == 0 { isNew = false }
//            }
//            if isNew { arr.append([nums[i], nums[j], nums[k]]) }
//        }
//        k += 1
//        if k == nums.count {
//            j += 1
//            k = j+1
//        }
//        if j == nums.count-1 {
//            i += 1
//            j = i+1
//            k = j+1
//        }
//    }
//    return arr
//}

//func threeSum(_ nums: [Int]) -> [[Int]] {
//    var positiveNums = [Int]()
//    var negativeNums = [Int]()
//    for num in nums {
//        if num >= 0 {
//            positiveNums.append(num)
//        } else {
//            negativeNums.append(num)
//        }
//    }
//    var i = 0
//    var j = 0
//    var arr = [[Int]]()
//    while i < positiveNums.count, j < negativeNums.count {
//        let positive = positiveNums[i]
//        let negative = negativeNums[j]
//        if positive+negative > 0 {
//            var array = negativeNums
//            array.remove(at: j)
//            if array.contains(-(positive+negative)) {
//                arr.append([positive, negative, -(positive+negative)])
//            }
//        } else {
//            var array = positiveNums
//            array.remove(at: i)
//            if array.contains(-(positive+negative)) {
//                arr.append([positive, negative, -(positive+negative)])
//            }
//        }
//        i += 1
//        if i == positiveNums.count {
//            j += 1
//            i = 0
//        }
//    }
//    return arr
//}
