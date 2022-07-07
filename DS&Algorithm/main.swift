//
//  main.swift
//  DS&Algorithm
//
//  Created by Minkyeong Ko on 2022/05/24.
//

import Foundation

// MARK: - Quick Find
// TODO: Implement Quick Find
// FIXME: Fix Everything
// !!!: Warning!
// ???: Questions?

// MARK: -10828 Stack
// 220707
var testStack: Stack = Stack()

let n = Int(readLine()!)!
for i in 0..<n {
    let line = readLine()
    let words: [Substring] = (line?.split(separator: " ") )!
    switch words[0] {
    case "pop":
        testStack.pop()
    case "push":
        testStack.push(x: Int(words[1])!)
    case "top":
        testStack.top()
    case "size":
        testStack.size()
    case "empty":
        testStack.empty()
    default:
        print("error")
    }
}
// MARK: -Quick Find
// 220530
// MARK: -Quick Union
// 220531
