//
//  Contact_DetailController.swift
//  ContactsExt
//
//  Created by Adish Betawar on 1/2/16.
//  Copyright © 2016 Adish Betawar. All rights reserved.
//

import UIKit

class Contact_DetailController: UITableViewCell
{
    required init?(coder aDecoder: NSCoder)
    {
        fatalError("init(coder:) has not been implemented")
    }

    override init(style: UITableViewCellStyle, reuseIdentifier: String?)
    {
        super.init(style: UITableViewCellStyle.Value2, reuseIdentifier: "Contact")
//        var contact: ContactInfo = ContactInfo.init(contact_first_Name: "Adish", contact_last_Name: "Betawar", number: 15108627726, school_info: "San Jose State University")
        
    }

    let adish = ContactInfo(contact_first_Name: "Adish", contact_last_Name: "Betawar", number: 5108627726, school_info: "San Jose State University")
    let abinav = ContactInfo(contact_first_Name: "Abinav", contact_last_Name: "Betawar", number: 5108763343, school_info: "UCSB")
}