//
//  main.swift
//  AlgorithmWithSwift
//
//  Created by 문정호 on 3/13/24.
//

import Foundation

let firstInput = readLine()!.components(separatedBy: " ")
let firstInputArray = firstInput.map({ Int($0)! })

var n: Int = firstInputArray[0] //배열의 크기
var m: Int = firstInputArray[1] //숫자가 더해지는 횟수
var k: Int = firstInputArray[2] //같은 숫자를 더할 수 있는 횟수

let secondInput = readLine()!.components(separatedBy: " ")
let secondInputArray = secondInput.map({ Int($0)! })

var maxInt: Int = 0
var nextMaxInt: Int = 0
var result: Int = 0

//최대와 그 다음 최대 구하기
for index in secondInputArray {
    if maxInt < index {
        nextMaxInt = maxInt
        maxInt = index
    }
}

//더하기
var plusCount = 0
var maxIntCount = 0

while plusCount < m {
    if maxIntCount < k {
        result += maxInt
        maxIntCount += 1
    } else if maxIntCount == k {
        result += nextMaxInt
        maxIntCount = 0
    }
    plusCount += 1
}

print(result)



