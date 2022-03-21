//
//  ActivityDetailsModel.swift
//  FinanceApp
//
//  Created by Vinicius Rocha on 21/03/22.
//

import Foundation

struct ActivityDetailsModel: Decodable {
    
    let name: String
    let category: String
    let price: Float
    let time: String
}
