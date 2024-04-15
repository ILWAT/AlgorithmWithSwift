//
//  ImplementationP2.swift
//  AlgorithmWithSwift
//
//  Created by 문정호 on 4/15/24.
//

import Foundation

fileprivate func implementationP2() {
    let row = ["a","b","c","d","e","f","g","h"]
    let column = ["1", "2", "3", "4", "5", "6", "7", "8"]
    var result = 0
    
    let dxy = [(2, 1), (2, -1), (-2, 1), (-2, -1), (1, 2), (1, -2), (-1, 2), (-1, -2)]
    
    let input = readLine()!.split(separator: "").map({ String($0) })
    
    var xOffset = offset(input: input[0], row: row)
    var yOffset = offset(input: input[1], row: column)
    
    for diff in dxy {
        let movedXoffset = xOffset + diff.0
        guard movedXoffset >= 0 && movedXoffset < 8 else {continue}
        let movedYoffset = yOffset + diff.1
        guard movedYoffset >= 0 && movedXoffset < 8 else {continue}
        result += 1
    }
    
    print(result)
}

fileprivate func offset(input: String, row: [String]) -> Int {
    var offset = 0
    while true {
        if row[offset] == input {
            return offset
        } else {
            offset += 1
        }
    }
}

//implementationP2()
