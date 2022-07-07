//
//  Stack.swift
//  DS&Algorithm
//
//  Created by Minkyeong Ko on 2022/06/07.
//

import Foundation

// MARK: - Stack
// bj-10828

// Paste it to main
/*
    var testStack: Stack = Stack()

    let n = Int(readLine()!)!
    for i in 0..<n {
        let line = readLine()
        let words: [Substring] = (line?.split(separator: " ") )!
        if words[0] == "pop" {
            testStack.pop()
        }
        else if words[0] == "push" {
            testStack.push(x: Int(words[1])!)
        }
        else if words[0] == "top" {
            testStack.top()
        }
        else if words[0] == "size" {
            testStack.size()
        }
        else if words[0] == "empty" {
            testStack.empty()
        }
    }
*/

struct Stack {
    var root: [Int] = []
    
    func printRoot() {
        print(root)
    }
    
    mutating func push(x: Int) {
        root.append(x)
    }
    
    mutating func pop() {
        let popped = root.popLast()
        if popped != nil {
            print(popped!)
        }
        else {
            print(-1)
        }
    }
    
    func size() {
        print(root.count)
    }
    
    func empty() {
        print(root.isEmpty ? 1 : 0)
    }
    
    func top() {
        if root.isEmpty {
            print(-1)
        }
        else {
            print(root[root.endIndex-1])
        }
    }
}

// test case
let exampleInput: String = """
14
push 1
push 2
top
size
empty
pop
pop
pop
size
empty
pop
push 3
empty
top
"""
// output: 2 2 0 2 1 -1 0 1 -1 0 3
