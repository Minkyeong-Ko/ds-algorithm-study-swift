//
//  QuickUnion.swift
//  DS&Algorithm
//
//  Created by Minkyeong Ko on 2022/05/31.
//

import Foundation

// MARK: - Quick Union
struct QuickUnion {
    /*
        공통 요소
    */
    // 노드들의 집합
    var root: [Int]
    
    // root 배열 초기화
    init(range: Int) {
        root = Array(1...range)
    }
    
    // 배열 확인(프린트) 함수
    func printRoot() {
        print(root)
    }
    
    /*
        다른 요소
    */
    // 해당 숫자의 root 찾기
    // O(N)
    func find(x: Int) -> Int {
        var rootVal: Int = x
        var idx = root.index(root.startIndex, offsetBy: x-1)
        // 계속해서 부모 노드로 이동하며
        while rootVal != root[idx] {
            rootVal = root[idx]
            idx = root.index(root.startIndex, offsetBy: rootVal-1)
        }
        return rootVal
    }
    
    mutating func union(x: Int, y: Int) {
        let rootX = find(x: x)
        let rootY = find(x: y)
        if rootX != rootY {
            let convertIndex = root.index(root.startIndex, offsetBy: rootY-1)
            root[convertIndex] = rootX
        }
    }
    
    func connected(x: Int, y: Int) -> Bool {
        return find(x: x) == find(x: y)
    }
}
