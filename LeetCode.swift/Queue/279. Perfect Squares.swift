//
//  279. Perfect Squares.swift
//  LeetCode.swift
//
//  Created by C02V146HV2H on 2018/9/6.
//  Copyright © 2018年 rogerfan. All rights reserved.
//

import Foundation

struct Point {
    var value: Int
    var step: Int
}

func numSquares(_ n: Int) -> Int {
    var queue = Queue(array: [Point(value: n, step: 0)])
    var set = Set<Int>.init()
    set.update(with: n)
    while !queue.isEmpty {
        let point = queue.front
        let value = point!.value
        let step = point!.step
        queue.dequeue()
        if value == 0 {
            return step
        }
        var i = 1
        while value - i*i >= 0 {
            let newValue = value - i*i
            if !set.contains(newValue) {
                queue.enqueue(Point(value: newValue, step: step+1))
                set.update(with: newValue)
            }
            i += 1
        }
    }
    return 0
}
