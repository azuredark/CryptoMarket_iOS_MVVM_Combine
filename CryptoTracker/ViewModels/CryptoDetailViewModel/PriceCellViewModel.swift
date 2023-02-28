//
//  PricesTableCellViewModel.swift
//  CryptoTracker
//
//  Created by Cristina Dobson on 2/26/23.
//

import UIKit

struct PriceCellViewModel {
  
  
  // MARK: - Properties
  
  let price: Double?
  let amount: Double?
  let priceType: PriceType
  
  
  // MARK: - Methods
  
  func getPriceString() -> String {
    var string = "\(price ?? 0.000000)"
    while string.count < 8 {
      string.append("0")
    }
    return string
  }
  
  func getPriceLabelColor() -> UIColor {
    return priceType == .ask ? UIColor.red : UIColor.green
  }
  
}
