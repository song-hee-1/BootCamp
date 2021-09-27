/*
 
 Define a Structure
 
 : need to define a struct called User to represent a user.
 
This struct needs to hold onto the user's name, email(optional), number of followers, whether they are active or not.
 
 The Struct also needs to have a method called logStatus().
 If users is active, the methods needs to print "XXX is working hard".
 Otherwise, it needs to print "XXX has left earth"
 
 After you have defined the struct, create a user with the name "Richard" with 0 followers who not active.
 
 */



func exercise() {

    // Define the User struct here
    struct User {
        var name : String
        var email : String?
        var followers : Int
        var isActive : Bool
        
        
        init(name:String, email:String?, followers:Int, isActive:Bool) {
                self.name = name
                self.email = email
                self.followers = followers
                self.isActive = isActive
        }

    func logStatus() {
        
        if self.isActive == true {
            print("\(self.name) is working hard")
        } else {
            print("\(self.name) has left earth")
        }
        
    }
        
    }
    var new = User(name: "Richard", email: nil, followers: 0, isActive: false)
    new.logStatus()
    // Diagnostic code - do not change this code
    print("\nDiagnostic code (i.e., Challenge Hint):")
    var musk = User(name: "Elon", email: "elon@tesla.com", followers: 2001, isActive: true)
    musk.logStatus()
    print("Contacting \(musk.name) on \(musk.email!) ...")
    print("\(musk.name) has \(musk.followers) followers")
    // sometime later
    musk.isActive = false
    musk.logStatus()
    
}
