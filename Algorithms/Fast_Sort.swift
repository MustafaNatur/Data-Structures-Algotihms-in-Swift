func fastSort(arr:[Int]) -> [Int]{
    if arr.count < 2{
        return arr
    } else{
        
        let privot = arr[0]
        var less:[Int] = []
        var greater:[Int] = []
        var equalI:[Int] = []
     
    for i in arr{
        if i > privot{
            greater.append(i)
        }
        else if i < privot{
            less.append(i)
        }
        else{
            equalI.append(i)
        }
    }
    return fastSort(arr: less) + equalI + fastSort(arr: greater)
    }
}