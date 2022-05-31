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

// MARK: - Test Union Find
// MARK: Quick Find
var testQF: QuickFind = QuickFind(range: 9)
testQF.union(x: 1, y: 2)
testQF.union(x: 2, y: 5)
testQF.union(x: 5, y: 6)
testQF.union(x: 6, y: 7)
testQF.union(x: 3, y: 8)
testQF.union(x: 8, y: 9)
testQF.printRoot()
print(testQF.connected(x: 1, y: 5))
print(testQF.connected(x: 5, y: 7))
print(testQF.connected(x: 4, y: 9))
testQF.union(x: 9, y: 4)
testQF.printRoot()
print(testQF.connected(x: 4, y: 9))

// MARK: Quick Union
var testQU: QuickUnion = QuickUnion(range: 9)
testQU.union(x: 1, y: 2)
testQU.union(x: 1, y: 2)
testQU.union(x: 2, y: 5)
testQU.union(x: 5, y: 6)
testQU.union(x: 6, y: 7)
testQU.union(x: 3, y: 8)
testQU.union(x: 8, y: 9)
testQU.printRoot()
print(testQU.connected(x: 1, y: 5))
print(testQU.connected(x: 5, y: 7))
print(testQU.connected(x: 4, y: 9))
testQU.union(x: 9, y: 4)
print(testQU.connected(x: 4, y: 9))
