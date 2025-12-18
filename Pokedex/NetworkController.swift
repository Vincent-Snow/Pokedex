//
//  NetworkController.swift
//  Pokedex
//
//  Created by Vincent Snow on 12/14/18.
//  Copyright © 2018 Vincent Snow. All rights reserved.
//

import Foundation

class NetworkController {
    
    private static let APIKey = ""
    static let baseURL = "https://pokeapi.co/api/v2/pokemon"
    static let allPokemonURL = "?limit=1000"
    static let original151URL = "https://pokeapi.co/api/v2/pokemon?limit=151&offset=0"
    
//    static func getAllPokemonByURL(pokemonName: String, completion: @escaping (_ results: [Pokemon]?) -> Void){
////        let escapedPokemon = pokemonName.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
//
//        let urlString = baseURL + pokemonName
//        guard let url = URL(string: urlString) else {
//            return
//        }
//
//        dataAtURL(url: url) { (json) in
//            guard let j = json,
//                  let allPokemon = j["results"] as? [[String : AnyObject]] else { return }
//        }
//
//    }

    static func getOnePokemonByURL(pokemonNumber: String) -> NSURL {
        let urlString = baseURL + "/" + pokemonNumber
        return NSURL(string: urlString)!
    }
    
    
    static func dataAtURL(_ url: NSURL, completion:@escaping (_ resultData: NSData?) -> Void) {
        let session = URLSession.shared
        let dataTask =  session.dataTask(with: url as URL) { (data, response, error) in
            if let e = error {
                print("Error downloading data \(e)")
            } else if let d = data {
                completion(d as NSData?)
             }
        }
        dataTask.resume()
    }
}
