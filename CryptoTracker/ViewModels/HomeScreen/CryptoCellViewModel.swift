//
//  CryptoCellViewModel.swift
//  CryptoTracker
//
//  Created by Cristina Dobson on 2/24/23.
//


import UIKit


struct CryptoCellViewModel {
  
  let symbol: String?
  let price24h: Double?
  let volume24h: Double?
  let lastTradePrice: Double?
  
  
  // MARK: - Helper Methods
  func getPricePercentageChangeString() -> String {
    return StringHelper.getPercentageChange(for: price24h ?? 0, from: lastTradePrice ?? 0)
  }
  
  func getCryptoNameString() -> String {
    return symbol?.getCryptoNameString() ?? ""
  }
  
  func getPriceString() -> String {
    
    if let price = lastTradePrice,
       let currency = symbol
    {
      let currencyString = currency.getCurrencyString()
      return currencyString.isCryptoCurrency ?
      "\(price) " + currencyString :
      price.toCurrencyFormat(with: currencyString)
    }
    return "-"
  }
  
  func getPercentageLabelColor(for amount: String) -> UIColor {
    return amount.contains("-") ? .red : .green
  }
  
}
