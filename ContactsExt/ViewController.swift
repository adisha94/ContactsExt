//
//  ViewController.swift
//  ContactsExt
//
//  Created by Adish Betawar on 12/29/15.
//  Copyright © 2015 Adish Betawar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    
    
    var ContactBook: [String: ContactInfo] = [:]
    var otherArray: [String] = []
    
    let ADISH: ContactInfo = ContactInfo(contact_first_Name: "Adish", contact_last_Name: "Betawar", number: 5108627726, school_info: "San Jose State University")
    
    let ABINAV: ContactInfo = ContactInfo(contact_first_Name: "Abinav", contact_last_Name: "Betawar", number: 5108627726, school_info: "San Jose State University")
    
    let textCellIdentifier = "TextCell"
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        print("view loaded")
        // Do any additional setup after loading the view, typically from a nib.
        
        
        ContactBook = ["Adish": ADISH, "Abinav": ABINAV]
        otherArray = ["this is cool", "this is even more cool", "Other things are cool too", "But this is the best so far"]
        tableView.delegate = self
        tableView.dataSource = self
        
        let ContactBook_V2 = ContactBook.keys // array of the keys
        let ContactBook_V3 = ContactBook.values // array of the values
        
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }    
    

    
    func dismissKeyBoardWithReturn(textField: UITextField) -> Bool
    {
        self.view.endEditing(true)
        return false
    }
    
    func dismissKeyboardWithTap(textFeild: UITextField)
    {
        view.endEditing(true)
    }
    
    @IBOutlet var tableView: UITableView!

    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1 //  This was put in mainly for my own unit testing
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return dataSourceArray.count // Most of the time my data source is an array of something...  will replace with the actual name of the data source
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        // Note:  Be sure to replace the argument to dequeueReusableCellWithIdentifier with the actual identifier string!
        let cell = tableView.dequeueReusableCellWithIdentifier("ReplaceWithCellIdentifier") as! UITableViewCell
        
        // set cell's textLabel.text property
        // set cell's detailTextLabel.text property
        return cell
    }
    
    

}