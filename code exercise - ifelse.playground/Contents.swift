/* Every 4 years, there is a leap year. Leap years have an extra day in February to bring the total number of days up to 366 instead of 365

The 3 conditions for any given year to be a leap year are :
    1. The year is exactly divisbile by four(with no reminder) then it is a leap year, unless:
    2. If the year is also divisible by 100(years ending in two zeros), then it is not a leap
    3. It is also divisible by 400 (in this case it will be a leap year)
 
 e.g) 1997 is not a leap year, but 1996 is. 1900 is not a leap year, but 2000 is.
 
 
 */






var aYear =  Int(readLine()!)!

func isLeap(year: Int) {
    
    if ( year % 4 == 0 ) {
           if ( year % 100 == 0 ) {
               if ( year % 400 == 0 ) {
                print("YES")
               } else {
                print("NO")
               }
           } else {
                print("YES")
           }
    } else {
    print("NO")
    }
    
}
