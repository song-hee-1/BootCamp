/*
 
 Using what you have learnt about functions which can have outputs, create a function called isOdd(n: Int).

 For any given whole number passed to the function, e.g.

 isOdd(n: 5)

 The function will test to see if the number is odd. If it is, then it should output true otherwise it should output false. These are Booleans and not Strings.

 Without changing any of the existing code, your function should be able to output the result.

 Try out your code in the main.swift file.
 
 */


//Create your function here 👇


func isOdd(n: Int) -> Bool {
    if n % 2 == 0 {
        return false
    } else {
        return true
    }
}





//Try some different numbers below:
//The code below is not part of the exercise, but you can test your own code with different numbers.
let numberIsOdd1 = isOdd(n: 53)
print(numberIsOdd1)
let numberIsOdd2 = isOdd(n: 52)
print(numberIsOdd2)
