//
//  Contact.swift
//  ContactsExt
//
//  Created by Adish Betawar on 12/29/15.
//  Copyright © 2015 Adish Betawar. All rights reserved.
//

import Foundation
import Darwin

var id: Int = 0

class ContactInfo
{
    var first_Name: String
    var last_Name: String
    var phone_Number: Int
    var school: String
    
    
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
            self.school = "Other"
        }
    }
    
    func get_Phone_Number() -> Int
    {
        return phone_Number; // 555-555-5555 style number format
    }
}