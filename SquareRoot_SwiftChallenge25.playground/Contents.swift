
//Write a function that returns the square root of a number, rounded to the nearest integer, without using sqrt().

//Solution 1 : Brute Force method
func squareroot(of number:Int) -> Int
{
    for i in 0...number/2
    {
        if i * i > number
        {
            return i-1
        }
    }
    return 0
}

//Solution 2 : Using Binary Search Algorithm [Binary Chop]
func squarerootUsingBinaryChop(of number:Int) -> Int
{
    guard number != 1 else {return 1}
    
    var lowerBound = 0
    var upperBound = 1 + number/2
    
    while lowerBound + 1 < upperBound
    {
        //Find the middle by adding half of the difference  to the lower bound
        let middle = ((upperBound - lowerBound)/2) + lowerBound
        
        let middleSquared = middle * middle
        
        if middleSquared == number
        {
            return middle
        }
        
        if middleSquared > number
        {
             upperBound = middle
        }else
        {
            lowerBound = middle
        }
    }
    return lowerBound
}

//Solution 3 : Using pow() function
func sqroot(of number:Int) -> Int
{
    return Int(floor(pow(Double(number), 0.5)))
}
//squareroot(of: 16)
//squareroot(of: 15)
//squareroot(of: 16777216)
//squarerootUsingBinaryChop(of: 16777216)
sqroot(of: 15)
