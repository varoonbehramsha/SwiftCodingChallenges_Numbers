
// Write a func that accepts an integer and returns the next highest and lowest number that have the same number of 1's in its binary representation

func binaryOnes(number:Int) -> (Int,Int)
{
    var higher = 0
    var lower = 0
    let binaryNumber = String(number, radix: 2, uppercase: true)
    let onesCount = binaryNumber.filter{$0 == "1"}.count
    for i in number+1...Int.max
    {
        if String(i,radix: 2,uppercase: true).filter({$0 == "1"}).count == onesCount
        {
            higher = i
            break
        }
    }
    for i in (Int.min...number-1).reversed()
    {
        if String(i,radix: 2,uppercase: true).filter({$0 == "1"}).count == onesCount
        {
            lower = i
            break
        }
    }
    return (higher,lower)
}

binaryOnes(number: 28)
