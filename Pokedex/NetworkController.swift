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
    static let baseURL = "https://pokeapi.co/api/v2/"
    
    static func getPokemon(pokemonName: String) -> URL {
        let escapedPokemon = pokemonName.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        
        guard let unwrappedPokemon = escapedPokemon else {
            print("pokemon name not valid")
            return URL(string: baseURL)!
        }
        return URL(string: baseURL + "pokemon/" + unwrappedPokemon + "/")!
    }
    
    
    static func dataAtURL(url: URL, completion:@escaping ( _ resultData: Data?) -> Void) {
        let session = URLSession.shared
        let dataTask =  session.dataTask(with: url) { (data, response, error) in
             
            guard let data = data else {
                print(error?.localizedDescription as Any)
                completion(nil)
                return
            }
            completion(data)
        }
        dataTask.resume()
    }
}
