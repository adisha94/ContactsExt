//
//  Contact.swift
//  ContactsExt
//
//  Created by Adish Betawar on 12/29/15.
//  Copyright © 2015 Adish Betawar. All rights reserved.
//

import UIKit
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
    
    init() // default initializers
    {
        self.first_Name = "(Sample first)"
        self.last_Name = "(Sample last)"
        self.phone_Number = 5555555555
        self.school = "(Sample School)"
    }
    
    func get_Name() -> (String, String)
    {
        return (first_Name, last_Name)
    }
    
    func get_Phone_Number() -> Int
    {
        return phone_Number; // 555-555-5555 style number format
    }
    
    func get_School_info() -> String
    {
        return school
    }
}


var Contact_Book: [String : ContactInfo] = [:]

class Contact : UITableViewController
{
    var other_Array_keys = []
    var other_Array_values = Contact_Book.values
    let textCellIdentifier = "TextCell"
    
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1 //  This was put in mainly for my own unit testing
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return Contact_Book.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        // Note:  Be sure to replace the argument to dequeueReusableCellWithIdentifier with the actual identifier string!
        //        var ContactBook_V2 = ContactBook.keys // array of the keys
        //        var ContactBook_V3 = ContactBook.values // array of the values
        let cell = tableView.dequeueReusableCellWithIdentifier(textCellIdentifier, forIndexPath: indexPath) as UITableViewCell
        let row = indexPath.row
        cell.textLabel?.text = (other_Array_keys[row] as! String)
        
        // set cell's textLabel.text property
        // set cell's detailTextLabel.text property
        return cell
    }
    
    
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        let row = indexPath.row
        print("\(other_Array_keys[row])")
    }
    
    func longPressedView()
    {
        let tapAlert = UIAlertController(title: "Force touch detected", message: "YOu have performed a force touch option on this button.", preferredStyle: UIAlertControllerStyle.ActionSheet)
        tapAlert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Destructive, handler: nil))
        
        self.presentViewController(tapAlert, animated: true, completion: nil)
    }

}