
//Write a function, that accepts two positive integers and raises the first to the power of the second.

func powerOf(base:Int,to exponent:Int) -> Int
{
    var result = 1
    for _ in 1...exponent
    {
        result = result * base
    }
    return result
}

powerOf(base: 3, to: 3)
