
// Write a function that accepts a string and returns true if the string only contains numbers (digits :0-9)

func stringContainsOnlyNumbers(inputString:String) ->Bool
{
    let digitsString = "0123456789"
    for character in inputString
    {
        if !digitsString.contains(character)
        {
            return false
        }
    }
    
    return true
}

stringContainsOnlyNumbers(inputString: "23.4234")
stringContainsOnlyNumbers(inputString: "234234")
