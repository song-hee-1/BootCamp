
/*
 
 The Fibonacci sequence is a series of numbers that is created by adding the 2 previous numbers.

 e.g. 0, 1, 1, 2, 3, 5, 8, 13, 21, 34 ...

 The first 2 numbers are always 0 and 1.

 The 3rd number is calculated like so:

 0 + 1 = 1

 The 4th number is calculated like so:

 1 + 1 = 2

 etc.

 Create a function that prints out the Fibonacci sequence as an array for the specified number of digits.

 e.g. Calling fibonacci(n: 5) should print:

 [0, 1, 1, 2, 3]
 [0, 1, 1, 2, 3]
 But calling fibonacci(n: 10) should print:

 [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
 
 */

class Assignment {
    
    
    func fibonacci(n: Int) {

    var n1 = 0
    var n2 = 1

    if n == 0 {
        print("Invalid")
    } else if n == 1 {
        print(n1)
    } else if n == 2 {
        print(n1,n2)
    } else {
        var array = [n1,n2]
        for _ in 2 ..< n {
            let n3 = n1 + n2
            n1 = n2
            n2 = n3
            array.append(n3)
            }
        print(array)
        
        }
    }
}
 
    	
        let test = Assignment()
        test.fibonacci(n: 5)
    
