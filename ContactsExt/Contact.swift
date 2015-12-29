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
    let name: String
    let phone_Number: Int
    let school: String
 
    init (contact_name: String, number: Int, school_info: String)
    {
        self.name = contact_name
        self.phone_Number = number
        if (school_info.containsString("university") || school_info.containsString("college"))
        {
            self.school = school_info
        }
        else
        {
            self.school = "Not finished high school yet"
        }
    }
    
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

let Adish = ContactInfo