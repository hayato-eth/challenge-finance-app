//
//  FinanceService.swift
//  FinanceApp
//
//  Created by Rodrigo Borges on 30/12/21.
//

import Foundation

class FinanceService {
    
    func fetchHomeData(completion: @escaping (HomeModel?) -> Void) {
        
        let urlString = "\(StringsRequest.baseURL.localized())\(StringsRequest.endPointHomeModel.localized())"
        
        guard let url = URL(string: urlString) else {return}
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            do {
                let resultHomeModel = try JSONDecoder().decode(HomeModel.self, from: data)
                completion(resultHomeModel)
            } catch {
                print(error.localizedDescription)
            }
        }.resume()
    }
    
    func fetchActivityDetails(completion: @escaping (ActivityDetailsModel?) -> Void) {
        
        let urlString = "\(StringsRequest.baseURL.localized())\(StringsRequest.endPointActivityDetails.localized())"
        
        guard let url = URL(string: urlString) else {return}
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            do {
                let resultActivityDetailsModel = try JSONDecoder().decode(ActivityDetailsModel.self, from: data)
                completion(resultActivityDetailsModel)
            } catch {
                print(error.localizedDescription)
            }
        }.resume()
    }
}
