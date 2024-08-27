import UIKit

struct User {
        var name: String
        var email: String?
        var followers: Int
        var status: Bool
        
        init (userName: String,
             userEmail: String?,
             userFollowers: Int,
             userStatus: Bool) {

            name = userName
            email = userEmail
            followers = userFollowers
            status = userStatus
        }
        
        func logStatus() {
            if (status == true){
                     print("\(name) is hard working")
            }else{
                     print("\(name) has left earth")
                 }
        }
    }

                      
var userRichard = User(userName: "Richard",
                       userEmail: nil,
                       userFollowers: 0,
                       userStatus: false)

print(userRichard.name)
print(userRichard.email ?? "no email")
print(userRichard.followers)
print(userRichard.status)
userRichard.logStatus()
  
var userElon = User(userName: "Elon",
                    userEmail: "elon@tesla.com",
                    userFollowers: 2001,
                    userStatus: true)

userElon.logStatus()
print("Contacting \(userElon.name) on \(userElon.email ?? "")...")
print("\(userElon.name) has \(userElon.followers) followers")
userElon.status = false
userElon.logStatus()
 
