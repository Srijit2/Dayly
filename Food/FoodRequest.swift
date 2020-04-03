//
//  FoodRequest.swift
//  Dayly
//
//  Created by Srijit Boinapally on 4/1/20.
//  Copyright © 2020 Srijit. All rights reserved.
//

import Foundation

enum FoodError:Error {
    case noDataAvailable
    case canNotProcessData
}

struct FoodRequest {
    let resourceURL:URL
    let API_KEY = "6eecc1d869b6a0cc884e436a936e2652"
    let API_ID = "b91d0452"
    
    init(foodName:String) {
        let resourceString = "https://api.edamam.com/api/food-database/parser?ingr=\(foodName)&app_id=\(API_ID)&app_key=\(API_KEY)"
        guard let resourceURL = URL(string: resourceString)
        else{
            fatalError()
        }
        self.resourceURL = resourceURL
    }
    
    func getFoods(completion: @escaping(Result<[Foods], FoodError>) -> Void){
        let dataTask = URLSession.shared.dataTask(with: resourceURL){ (data,res,_) in
            print(res)
            guard let jsonData = data else{
                completion(.failure(.noDataAvailable))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let foodResponse = try decoder.decode(FoodResponse.self, from: jsonData)
                completion(.success(foodResponse.hints))
            }catch{
                completion(.failure(.canNotProcessData))
            }
        }
        dataTask.resume()
    }
    
}
