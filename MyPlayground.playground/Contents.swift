/*
func loveCalculator() {
    let loveScore = Int.random(in: 1 ... 100)
    
    if loveScore > 80 {
        print("You love each other like Kanye loves Kanye")
    } else if loveScore > 40 {
        print("You go together like Coke and Mentos")
    } else {
        print("You'll be forever alone")

    }
}



func loveCalculator() {
    let loveScore = Int.random(in: 1 ... 100)
    print(loveScore )
    switch loveScore {
    case 81 ... 100 :
        print("You love each other like Kanye loves Kanye")
    case 41 ... 80 :
        print("You go together like Coke and Mentos")
    case ...40 :
        print("You'll be forever alone")
    default:
        print("Error lovescore is out of range.")
    }
}

loveCalculator()
loveCalculator()
loveCalculator()




var player1Username : String? = nil

player1Username = "동주니엉덩이"

var player2Username : String? = nil

player2Username = 1234

print(player1Username)
print(player1Username!)
print(player2Username!)

 




struct Town {
    let name: String
    var citizens : [String]
    var resources : [String: Int]

    init(townName:String, citizens: [String], resources: [String : Int]) {
        self.name = townName
        self.citizens = people
        self.resources = resources
    }

    func forify() {
        print("Defences increased!")
    }

}


var anotherTown = Town(townName: "Nameless ISland", people: ["Tom Hanks"], stats: ["Coconuts" : 100] )

anotherTown.citizens.append("Wilson")

var ghostTown = Town(townName: "Ghosty McGhostFace", people: [], resources: ["Tunbleweed" : 1])
 
anotherTown.citizens.append("Wilson")
ghostTown.forify()


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
