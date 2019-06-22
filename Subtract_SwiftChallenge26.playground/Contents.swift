
// Write a function that subtracts one integer from another without using '-' operator


//Solution 1 : Using Binary Search
//func subtract(_ b:Int,from a:Int) -> Int
//{
//    // c = a - b, a = c + b , a and b are given, try different values for c
//
//    var lowerBound = 0
//    var upperBound = a
//
//    while lowerBound < upperBound + 1
//    {
//        // Find the mid point
//        let c = ((upperBound - lowerBound)/2) + lowerBound
//
//        if c + b == a
//        {
//         return c
//        }
//
//        if c + b > a
//        {
//            upperBound = c
//        }else
//        {
//            lowerBound = c
//        }
//    }
//
//    return lowerBound
//}

//Solution 2 : Using Bitwise Not '~' operator
func subtract(_ b:Int,from a:Int) -> Int
{
    // '~b' = -(b+1)
    return a + (~b + 1)
}
subtract(700, from: 8000)
