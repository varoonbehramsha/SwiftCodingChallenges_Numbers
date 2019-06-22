

//Write a function that accepts an unsigned 8-bit integer and returns its binary reverse, padded so it holds preceisely 8 binary digits.

func binaryReverse(of number:UInt8) -> Int
{
    var binaryString = String.init(number, radix: 2, uppercase: true)
    
    //Add Padding of 0's
    for _ in binaryString.count+1...8
    {
        binaryString = "0" + binaryString
    }
    
    let reversed = binaryString.reversed()
    print(String(reversed))
    let result = Int(String(reversed), radix: 2) ?? 0
    return result
}

binaryReverse(of: 4)
