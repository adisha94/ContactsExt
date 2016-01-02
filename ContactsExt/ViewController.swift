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
    @IBOutlet weak var sample: UILabel!
    @IBOutlet weak var big_Text: UITextView!
    @IBOutlet weak var custom_Text: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
     
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }    
    

    @IBAction func EditLable(sender: AnyObject)
    {
        if (custom_Text.text == nil)
        {
            sample.text = "No message in the textbox above."
        }
        else
        {
            sample.text = custom_Text.text
            big_Text.text = "Hello World!. This is anothe big text view"
        }
    }
    
}