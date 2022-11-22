#  Procedure
1. VIPER (View, Interactor, Presenter, Entity and Router)

2. Create dirs for all files with alphabetic sequece 
Application
API (services)
Modules etc...

3. Don't forget to change Plist derictory in Build Settings

4. Create APIServices

5. Create first Module 
Create VC
Create Protocol: AnyObject to asign it only for classes to restrict components comunication between each other. Every component should give and take only the info that protocol contains
Extension assign VC to that protocol BECAUSE MAY BE TO MANY METHODS

6. Create Presenter
Protocol first
Create class Presenter WEAK VAR for VIEW. MEMORY LEAKS
Create var Router: "Module"Protocol
Create var Interactor: "Module"Protocol
Init 
extension assign Presenter to that protocol (not many methods, no extension required)

7. Create Module Router
Create protocol
Create Router Class and assign to that protocol 
WEAK var presenter !! only one strong bind Everything should be binded to router STRONGLY

8. Create Module Interactor - responsible for working with DATA. Web Services, Data Bases, User Defaults, Key Chain

9. Create Mudule Builder () -> VC 
import UIKit
static func build() - VC to make it available without creating any object in a file

