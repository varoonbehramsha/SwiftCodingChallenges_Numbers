
//Write a function that accepts an integer as a parameter and returns true if the number is prime.

func isPrime(number:Int) -> Bool
{
    var divisorCount = 0
    for i in 1...number
    {
        if number%i == 0
        {
            divisorCount += 1
        }
    }
    
    if divisorCount > 2
    {
        return false
    }else
    {
        return true
    }
    
}

isPrime(number: 16777259)
