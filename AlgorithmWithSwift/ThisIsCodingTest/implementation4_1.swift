//
//  Main.swift
//  AlgorithmWithSwift
//
//  Created by 문정호 on 4/9/24.
//

import Foundation

func implementation4_1() {
    let input1 = Int(readLine()!)
    let input2 = readLine()?.split(separator: " ").map({String($0)})
    var xOffset = 1
    var yOffset = 1

    guard let input1 else {return}
    guard let input2 else {return}
    
    input2.forEach { value in
        switch value {
        case "L":
            xOffset -= 1
        case "R":
            xOffset += 1
        case "U":
            yOffset -= 1
        case "D":
            yOffset += 1
        default:
            break
        }
        if xOffset <= 0{
            xOffset = 1
        } else if yOffset <= 0 {
            yOffset = 1
        } else if xOffset >= input1 {
            xOffset = input1
        } else if yOffset >= input1 {
            yOffset = input1
        }
    }
    print(yOffset, xOffset)
}

implementation4_1()


