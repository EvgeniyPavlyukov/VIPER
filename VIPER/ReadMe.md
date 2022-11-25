#  Procedure
1. VIPER (View, Interactor, Presenter, Entity and Router)

2. Create dirs for all files with alphabetic sequece 
Application
API (services)
Modules etc...

3. Don't forget to change Plist derictory in Build Settings

4. Create APIServices
Без префикса @escaping замыкание по умолчанию не является сбегающим, и его жизненный цикл заканчивается вместе с областью действия функции. 
Термин @escaping может показаться вам непонятным, но фактическая реализация, позволяющая замыканию выжить в области действия вызывающей функции, очень проста. Чтобы выполняемое замыкание сохранилось после завершения функции, вы должны сохранить его в переменной, определенной вне функции.
@escaping - это способ сообщить тем, кто использует нашу функцию, что параметр закрытия где-то хранится и может пережить область действия функции. Если вы видите какой-либо префикс @escaping, вы должны быть осторожны с тем, что вы передали в него замыкание, поскольку это может вызвать цикл сильных ссылок.

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




10. Create the next module and realyze the data transition. It may be done with 4 methods.
first pass Int and second module decides itself what picture to use
second direct order for second module what picture to install
third don't pass to module anything and leave the decision making for the module
fourth just pass the picture to second view

decide myself the way of realization

if second module is being called from dif parts of app and may content any additional info like smiles, faces better to say the type of picture but not to send the whole image

if using push notification no module is going to be a parent for that, need to use interactor from SECOND MODULE

in our case all data is already created so just pass it 

