//
//  Contact.swift
//  ContactsExt
//
//  Created by Adish Betawar on 12/29/15.
//  Copyright © 2015 Adish Betawar. All rights reserved.
//

import Foundation
import AddressBook
import Darwin

class ContactInfo
{
    let first_Name: String
    let last_Name: String
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
    
    //    func get_first_Name() -> String
    //    {
    //        return first_Name;
    //    }
    //
    //    func get_last_Name() -> String
    //    {
    //        return last_Name;
    //    }
    
    func get_Phone_Number() -> Int
    {
        return phone_Number; // 555-555-5555 style number format
    }
    //    func get_School() -> String
    //    {
    //        return school;
    //    }
}


var ContactBook: [String: ContactInfo]
