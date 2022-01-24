struct TestSortAlgorithms {
    var array: [Int] = (1...200).map { _ in .random(in: 1...5000) }
    
    func testBubbleSort() {
        let bubbleSort = BubbleSort()
        let start = Date().timeIntervalSince1970
        let sortedArray = bubbleSort.bubbleSort(array)
        let end = Date().timeIntervalSince1970
        print(sortedArray)
        print("Time it took: \(end - start)")
    }
    
    func testMergeSort() {
        let mergeSort = MergeSort()
        let start = Date().timeIntervalSince1970
        let sortedArray = mergeSort.mergeSort(array)
        let end = Date().timeIntervalSince1970
        print(sortedArray)
        print("Time it took: \(end - start)")
    }
}
