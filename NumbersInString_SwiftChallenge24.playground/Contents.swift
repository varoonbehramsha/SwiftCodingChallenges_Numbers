
//Write a function that accepts a string containing letters and numbers as an input and returns the sum of all numbers in the string.

func sumOfNumbersInString(inputString:String) -> Int
{
    
    //1. Extract numeric characters from the string
    let numbersInString = inputString.filter{"0123456789".contains($0)}
   
    //2. Convert array of numeric characters to array of integers
    let numbers = numbersInString.map{Int(String($0))!}
   
    //3. Sum up all the integers in the array
   return numbers.reduce(0, { x, y in
        x+y
    })
    
    
}

sumOfNumbersInString(inputString: "s9k7h5")
sumOfNumbersInString(inputString: "hello")
sumOfNumbersInString(inputString: "1a2b3c")
