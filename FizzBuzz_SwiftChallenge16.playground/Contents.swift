
//Write a function that counts from 1 to 100 and prints "Fizz" if the counter is evenly divisible by 3, "Buzz" if it's evenly divisible by 5 and "Fizz Buzz" if evenly divisible by 3 and 5. For all other cases it prints the counter number.

func fizzBuzz()
{
    for i in 1...100
    {
        if i%15 == 0
        {
            print("Fizz Buzz")
        }else if i%3 == 0
        {
            print("Fizz")
        }else if i%5 == 0
        {
            print("Buzz")

        }else
        {
            print("\(i)")

        }
        
    }
}

fizzBuzz()
