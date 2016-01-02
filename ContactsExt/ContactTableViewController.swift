//
//  ContactTableViewController.swift
//  ContactsExt
//
//  Created by Adish Betawar on 12/30/15.
//  Copyright © 2015 Adish Betawar. All rights reserved.
//

import UIKit

class ContactTableViewController: UITableViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
        print("Contacts view loaded")
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var ContactBook:  [Int : ContactInfo] = [:] // created empty dictionary
    
    func addToContacts(first: String, last: String, phone_number: Int, school_name: String)
    {
        var newContact: ContactInfo
        newContact = ContactInfo(contact_first_Name: first, contact_last_Name: last, number: phone_number, school_info: school_name)
        
        ContactBook.updateValue(newContact, forKey: id++)
    }
    
    
}