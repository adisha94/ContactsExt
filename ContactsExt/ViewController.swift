//
//  ViewController.swift
//  ContactsExt
//
//  Created by Adish Betawar on 12/29/15.
//  Copyright © 2015 Adish Betawar. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
        print("view loaded")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }    
    
    @IBOutlet weak var sample: UILabel!
    @IBOutlet weak var big_Text: UITextView!

    @IBAction func EditLable(sender: AnyObject)
    {
        if (big_Text.text == "")
        {
            print("There is noting inside big_text. Value has been set to nil")
        }
        else
        {
            big_Text.text = "Hello World! This is another big text view. Just making sure that this works here."
            print("There is text inside big_text")
        }
    }
    
}