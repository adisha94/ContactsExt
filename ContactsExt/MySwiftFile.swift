import Foundation

struct Contact
{
    let name: String
    let phone_Number: Int
    let school: String
    let id: Int // randomely assign if possible with number generators
    let is_working : Bool
    
    func get_Name() -> String
    {
        return name;
    }
    func get_Phone_Number() -> Int
    {
        return phone_Number; // 555-555-5555 style number format
    }
    func get_School() -> String
    {
        return school;
    }
}