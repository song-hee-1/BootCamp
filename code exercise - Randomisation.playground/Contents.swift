// Code Exercise

// We are going to make password generator. We have created an array called "alphabet" which contains all 26 letters in the alphabet.

// Write some code to randomly pick 6 letters out of the alphabet to creat a random 6 character password.



func exercise() {
    
    

    ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    //The number of letters in alphabet equals 26
    
    let a = alphabet[Int.random(in: 0 ... 25)]
    let b = alphabet[Int.random(in: 0 ... 25)]
    let c = alphabet[Int.random(in: 0 ... 25)]
    let d = alphabet[Int.random(in: 0 ... 25)]
    let e = alphabet[Int.random(in: 0 ... 25)]
    let f = alphabet[Int.random(in: 0 ... 25)]
    
    let password = a + b + c + d + e + f
    
    print(password)
    
}


func erercise2() {
    let alphabet2 = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    //The number of letters in alphabet equals 26

    
    
    let password2 = alphabet2.randomElement()! + alphabet2.randomElement()! + alphabet2.randomElement()! + alphabet2.randomElement()! + alphabet2.randomElement()! + alphabet2.randomElement()!
    
    
    print(password2)
    
}
