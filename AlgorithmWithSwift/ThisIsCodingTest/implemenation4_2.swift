//
//  main.swift
//  AlgorithmWithSwift
//
//  Created by 문정호 on 4/9/24.
//

import Foundation


fileprivate func implementation4_2() {
    let input = readLine().map({ Int($0)! })
    
    var result = 0
    
    if let input {
        for hour in 0...input {
            for min in 0..<60{
                for sec in 0..<60{
                    if String(hour).contains("3") || String(min).contains("3") || String(sec).contains("3"){
                        result += 1
                    }
                }
            }
        }
    }
    
    print(result)
}

implementation4_2()
