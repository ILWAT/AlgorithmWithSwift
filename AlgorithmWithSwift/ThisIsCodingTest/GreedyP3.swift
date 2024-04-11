//
//  GreedyP3.swift
//  AlgorithmWithSwift
//
//  Created by 문정호 on 3/18/24.
//

import Foundation

fileprivate func greedyP3() {
    //n: 행의 갯수 / m: 열의 갯수
    var n: Int = 0
    var m: Int = 0
    var rowMin = 10001
    var totalMax = 0

    let firstInput = readLine()!.split(separator: " ").map({ Int($0)! })

    n = firstInput[0]
    m = firstInput[1]

    for _ in 0..<n {
        let rowValue = readLine()!.split(separator: " ").map({ Int($0)! })
        rowMin = rowValue.min()!
        totalMax = max(totalMax, rowMin)
    }

    print(totalMax)
}

