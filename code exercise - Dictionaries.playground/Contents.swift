func exercise() {

    //Don't change this
    var stockTickers: [String: String] = [
        "APPL" : "Apple Inc",
        "HOG": "Harley-Davidson Inc",
        "BOOM": "Dynamic Materials",
        "HEINY": "Heineken",
        "BEN": "Franklin Resources Inc"
    ]
    
    //Write your code here.

    stockTickers.updateValue("Slack Technologies Inc", forKey: "WORK")
    
    stockTickers["BOOM"] = "DMC global Inc"
    

  
     //Don't modify this
    print(stockTickers["WORK"]!)
    print(stockTickers["BOOM"]!)
}
 
