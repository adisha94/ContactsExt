//: Playground - noun: a place where people can play

print("practicing subscripts")

struct TimesTable
{
    let multiplier: Int
    subscript (index: Int) ->Int
    {
        return multiplier * index
    }
}

let threeTimesTable = TimesTable(multiplier: 3)
let twoTimesTable = TimesTable(multiplier: 2)

print("six times three is \(threeTimesTable[6])")
print("six times three is \(twoTimesTable[6])")

var numberOfLegs: [String : Int] = ["millipede": 1000, "centipede" : 100, "spider" : 8, "insect" : 6, "bird" : 2, "bear" : 4, "human" : 2]
numberOfLegs["bird"] = 2
numberOfLegs





struct Matrix
{
    let rows: Int,  columns: Int
    var grid: [Double]
    init(rows : Int, columns: Int)
    {
        self.rows = rows
        self.columns = columns
        grid = Array(count: rows * columns, repeatedValue: 0.0)
    }
}

let mat_A: Matrix = Matrix(rows: 5, columns: 4)






class ContactInfo
{
    var first_Name: String
    var last_Name: String
    let phone_Number: Int
    let school_info: String
    
    init (contact_first_Name: String, contact_last_Name: String, number: Int, school_info: String)
    {
        self.first_Name = contact_first_Name
        self.last_Name = contact_last_Name
        self.phone_Number = number
        
        if (school_info.containsString("university") || school_info.containsString("college") || school_info.containsString("University") || school_info.containsString("College"))
        {
            self.school_info = school_info
        }
        else
        {
            self.school_info = "Not finished with high school yet"
        }
    }
}
let adish = ContactInfo(contact_first_Name: "Adish", contact_last_Name: "Betawar", number: 5108627726, school_info: "San Jose State University")
let abinav = ContactInfo(contact_first_Name: "Abinav", contact_last_Name: "Betawar", number: 5108763343, school_info: "San Jose State University")



