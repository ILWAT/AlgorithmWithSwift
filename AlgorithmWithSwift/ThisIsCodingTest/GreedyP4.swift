//
//  main.swift
//  AlgorithmWithSwift
//
//  Created by 문정호 on 3/18/24.
//

import Foundation

func GreedyP4() {
    var n: Int
    var k: Int
    var result: Int
    var calCount: Int = 0

    var input = readLine()!.split(separator: " ").map( { Int($0)! })

    n = input[0]
    k = input[1]

    while n > 1 {
        if n%k==0 {
            n /= k
        } else {
            n -= 1
        }
        calCount += 1
    }

    print(calCount)
}

