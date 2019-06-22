
// Write a function that accepts a minimum and maximum positive integer and returns a random number between those two bounds, inclusive.

func randomNumberBetween(min:Int,and max:Int) -> Int?
{
    if min < 0 || max < 0
    {
        print("Enter positive values")
        return nil
    }
    
    return Int.random(in: min...max)
}

randomNumberBetween(min: 1, and: 3)
