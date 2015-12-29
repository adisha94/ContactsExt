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