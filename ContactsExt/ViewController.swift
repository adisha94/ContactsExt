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
    
    
    @IBOutlet var force_Touch_Contact_Cell: UIView!
    
    let long_Pressed_View = UILongPressGestureRecognizer()
    
//    let ADISH: ContactInfo = ContactInfo(contact_first_Name: "Adish", contact_last_Name: "Betawar", number: 5108627726, school_info: "San Jose State University")
//    
//    let ABINAV: ContactInfo = ContactInfo(contact_first_Name: "Abinav", contact_last_Name: "Betawar", number: 5108627726, school_info: "San Jose State University")
    
    let textCellIdentifier = "TextCell"

    override func viewDidLoad()
    {
        super.viewDidLoad()
        print("view loaded")
        // Do any additional setup after loading the view, typically from a nib.
        
        
//        ContactBook = ["Adish": ADISH, "Abinav": ABINAV]
        otherArray = ["Adish", "Abinav", "Adada", "Other Contact"]
        tableView.delegate = self
        tableView.dataSource = self
        
        long_Pressed_View.addTarget(self, action: "force_Touch_Contact_Cell")
//        textCellIdentifier
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
        return ContactBook.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        // Note:  Be sure to replace the argument to dequeueReusableCellWithIdentifier with the actual identifier string!
//        var ContactBook_V2 = ContactBook.keys // array of the keys
//        var ContactBook_V3 = ContactBook.values // array of the values
        let cell = tableView.dequeueReusableCellWithIdentifier(textCellIdentifier, forIndexPath: indexPath) as UITableViewCell
        let row = indexPath.row
        cell.textLabel?.text = otherArray[row]
        
        // set cell's textLabel.text property
        // set cell's detailTextLabel.text property
        return cell
    }
    
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        let row = indexPath.row
        print("\(otherArray[row])")
    }
    
    func longPressedView()
    {
        let tapAlert = UIAlertController(title: "Force touch detected", message: "YOu have performed a force touch option on this button.", preferredStyle: UIAlertControllerStyle.ActionSheet)
        tapAlert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Destructive, handler: nil))
        
        self.presentViewController(tapAlert, animated: true, completion: nil)
    }
}