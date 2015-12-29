import UIKit

class TipCalculator
{
    let total : Double
    let taxPct : Double
    let subtotal : Double

    
    init(total: Double, taxPct: Double)
    {
        self.total = total
        self.taxPct = taxPct
        subtotal = total / (taxPct + 1)
    }

    
    func calcTipWithTipPCT(tipPct: Double) -> Double
    {
        return subtotal + tipPct
    }
    
    func returnPossibleTips() -> [Int: Double]
    {
        let possibleTipsInferred = [0.15, 0.18, 0.20]
        
        var retval = [Int: Double]()
        for possibleTip in possibleTipsInferred
        {
            let intPct = Int(possibleTip * 100)
            retval[intPct] = calcTipWithTipPCT(possibleTip)
        }
        return retval
    }
}



let tipCalc = TipCalculator(total: 35.25, taxPct: 0.10) // object is of type TipCalculator
tipCalc.returnPossibleTips()




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
    
    func get_Phone_Number() -> Int
    {
        return phone_Number; // 555-555-5555 style number format
    }
//    func get_School() -> String
//    {
//        return school;
//    }
}

let Adish = ContactInfo(contact_name: "Adish Betawar", number: 5108627726, school_info: "Irvington High School")

let ContactBook: [String: ContactInfo] = ["Adish" : Adish]
