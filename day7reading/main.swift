//
//  main.swift
//  day7reading
//
//  Created by Parag Garg on 2019-06-14.
//  Copyright © 2019 Parag Garg. All rights reserved.
//

import Foundation

func readJsonFile(jsonfilename: String)

{
    
    let url = Bundle.main.url(forResource: jsonfilename, withExtension: "json")
    
    
    guard let jsonData = url else {return}
    guard let Data = try? Data(contentsOf: jsonData) else {
        return
    }
    
    guard let json = try? JSONSerialization.jsonobject(with: Object,: []) else{
        
        return
    }

    print(json)
    
    if let jsonDSictionary = json as? [String: Any]

    {

    if let email = jsonDSictionary ("email") as? String
    
    {
        print(email)
        
    }
    
    if let username = jsonDSictionary ("username") as? String
      
      {
        
        print(username)
    
    }
    
    if let addressDict = jsonDSictionary ("address") as? Dictionary<String, Any>.Element{
        if let city = addressDict["city"] as? String
        
        {
            print(city)
        }
        if let geoDict = addressDict ("geo") as? [String:Any]{
            if let lat = geoDict["lat"] as? String        }
            {
                print(lat)
            }
}
        }
        
readJsonFile(jsonfilename: "users")


