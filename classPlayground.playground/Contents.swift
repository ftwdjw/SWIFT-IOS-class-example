//: This IOS playground shows how to use a class.
// This has been tested on xcode8
import UIKit

//: a class named NamedShape has a variable name and a function called
//: simpleDescription

class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "a \(name) is the name of the shape."
    }
}


//:  inialize a variable called myShape
let myShape = NamedShape(name: "line")

//:call the function simpleDescription()
myShape.simpleDescription()


class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter: Double {
        
        
        /*In the setter for perimeter, the new value has the implicit name newValue. You can provide an explicit name in parentheses after set.
         
         Notice that the initializer for the EquilateralTriangle class has three different steps:
         
         Setting the value of properties that the subclass declares.
         Calling the superclass’s initializer.
         Changing the value of properties defined by the superclass. Any additional setup work that uses methods, getters, or setters can also be done at this point.
         If you don’t need to compute the property but still need to provide code that is run before and after setting a new value, use willSet and didSet. The code you provide is run any time the value changes outside of an initializer. For example, the class below ensures that the side length of its triangle is always the same as the side length of its square.”
         
         */
        
        
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}

//: call EquilateralTriangle with sidelength of 3.1 and name
//: a triangle

var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")


print(triangle.name,"with a sidelength of \(triangle.sideLength) has a perimeter of \(triangle.perimeter)")

triangle.perimeter = 9.9

print("\na triangle that has a perimeter of \(triangle.perimeter) has a side legth of \(triangle.sideLength)")


triangle.simpleDescription()
