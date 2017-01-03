//: ## Defining a Struct
/*:
**To define a struct in Swift, the following syntax can be used:**

*struct NameOfStruct {*

  *\/\/ variables declarations (known as properties)...*

*}*
*/
struct Student {
    let name: String
    var age: Int
    var school: String
}

struct GeoLocation {
    var latitude: Double = 0.0
    var longitude: Double = 0.0
}

struct Point2D {
    var x: Int = 0
    var y: Int = 0
}
//: [Next](@next)


var minh = Student(name: "Minh", age: 12, school: "CSUF")
minh.age = 20

minh.name
minh.school

var new_minh_age = minh.age
new_minh_age
minh.age