struct MergeSort {
    func mergeSort(_ array: [Int]) -> [Int] {
        guard array.count > 1 else { return array }
        
        let middle = array.count/2
        
        let left = mergeSort(Array(array[0..<middle]))
        let right = mergeSort(Array(array[middle..<array.count]))
        
        return merge(left, right)
    }

    private func merge(_ left: [Int], _ right: [Int]) -> [Int] {
        var leftIndex = 0
        var rightIndex = 0
        
        var result = [Int]()
        
        while leftIndex < left.count && rightIndex < right.count {
            if left[leftIndex] < right[rightIndex] {
                result.append(left[leftIndex])
                leftIndex += 1
            } else if left[leftIndex] > right[rightIndex] {
                result.append(right[rightIndex])
                rightIndex += 1
            } else {
                result.append(left[leftIndex])
                result.append(right[rightIndex])
                leftIndex += 1
                rightIndex += 1
            }
        }
        
        while leftIndex < left.count {
            result.append(left[leftIndex])
            leftIndex += 1
        }
        
        while rightIndex < right.count {
            result.append(right[rightIndex])
            rightIndex += 1
        }
        
        return result
    }
}
