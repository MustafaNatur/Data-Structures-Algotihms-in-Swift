func bubbleSort( arr:inout [Int]) -> [Int]{
    var pass = arr.count
    for _ in 0..<arr.count{
        pass -= 1
        for j in 0..<pass{
            let key = arr[j]
            if key > arr[j+1]{
                let t = arr[j+1]
                arr[j] = t
                arr[j+1] = key
            }
        }
    }
    return arr
}