func bubbleSort(array: [Int]) -> [Int] {
    var sortedArray = array
    sortedArray.reserveCapacity(array.count)
    let lastCheckIndex = sortedArray.count - 1

    var swap = true
    while swap {
        swap = false
        
        for i in 0..<lastCheckIndex {
            if i == lastCheckIndex {
                break
            }
            let a = sortedArray[i]
            let b = sortedArray[i + 1]
            if a > b {
                sortedArray.swap(i, with: i+1)
                swap = true
            }
        }
    }
    return sortedArray
}

/// There exist a function in Swift called `swapAt(_ i: Int, _ j: Int)`
/// This is just for educational purpose
extension Array where Element == Int {
    mutating func swap(_ a: Int, with b: Int) {
        let tempA = self[a]
        
        self[a] = self[b]
        self[b] = tempA
    }
}
