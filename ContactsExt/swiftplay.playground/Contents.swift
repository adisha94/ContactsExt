import UIKit
import Darwin


class ContactInfo
{
    var first_Name: String
    var last_Name: String
    let phone_Number: Int
    let school: String
    
    init (contact_first_Name: String, contact_last_Name: String, number: Int, school_info: String)
    {
        self.first_Name = contact_first_Name
        self.last_Name = contact_last_Name
        self.phone_Number = number
        
        if (school_info.containsString("university") || school_info.containsString("college") || school_info.containsString("University") || school_info.containsString("College"))
        {
            self.school = school_info
        }
        else
        {
            self.school = "Not finished with high school yet"
        }
    }
}
let adish = ContactInfo(contact_first_Name: "Adish", contact_last_Name: "Betawar", number: 5108627726, school_info: "San Jose State University")
let abinav = ContactInfo(contact_first_Name: "Abinav", contact_last_Name: "Betawar", number: 5108763343, school_info: "San Jose State University")

var ContactBook: [String: ContactInfo] = ["Adish" : adish]
ContactBook.updateValue(abinav, forKey: "Abinav")
ContactBook.updateValue(abinav, forKey: "this is a sample name")



func addToContacts(first: String, last: String, phone_number: Int, school_name: String)
{
    var newContact: ContactInfo
    newContact = ContactInfo(contact_first_Name: first, contact_last_Name: last, number: phone_number, school_info: school_name)
    
//    ContactBook.updateValue(newContact, forKey: id++)
}