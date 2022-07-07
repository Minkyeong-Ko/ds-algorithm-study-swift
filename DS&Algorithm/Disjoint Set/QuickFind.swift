//
//  QuickFind.swift
//  DS&Algorithm
//
//  Created by Minkyeong Ko on 2022/05/31.
//

import Foundation

// 그래프에서 connection 찾기 (공통 조상 찾기)

// MARK: - Quick Find

// Paste it to main
/*
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
*/

struct QuickFind {
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
    // O(1)
    func find(x: Int) -> Int {
        let idx = root.index(root.startIndex, offsetBy: x-1)
        return root[idx]
    }
    
    // 부모 노드를 같게 만들기 (두 노드 합치기)
    // O(N)
    mutating func union(x: Int, y: Int) {
        let rootX = find(x: x)
        let rootY = find(x: y)
        // root가 다르면
        if rootX != rootY {
            // 전체를 돌면서 rootX의 루트를 rootY의 루트와 같게 만든다
            for i in 0..<root.count {
                let convertIndex = root.index(root.startIndex, offsetBy: i)
                if root[convertIndex] == rootY {
                    root[convertIndex] = rootX
                }
            }
        }
    }
    
    // 두 노드 사이의 connection 확인
    func connected(x: Int, y: Int) -> Bool {
        return find(x: x) == find(x: y)
    }
}
