import UIKit

enum Currency {
    case cad
    case mxn
}

let usToCad = 1.33
let usToMxn = 19.70

var currency: Currency = .cad

func convert(_ dollars: Double) -> Double {
    
    switch currency
    {
    case .cad:
        return dollars * usToCad
    case .mxn:
        return dollars * usToMxn
    }
}

func convert(amountString: String) -> String? {
    let amount = Double(amountString)
    guard let newAmount = amount else { return "Nada"}
    
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency
    formatter.generatesDecimalNumbers = true
    return formatter.string(from: convert(newAmount) as NSNumber)
    
    
    
//    return String(convert(newAmount))
}


convert(amountString: "2.25")
