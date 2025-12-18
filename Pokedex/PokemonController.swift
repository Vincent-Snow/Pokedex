//
//  PokemonController.swift
//  Pokedex
//
//  Created by Vincent Snow on 10/7/18.
//  Copyright © 2018 Vincent Snow. All rights reserved.
//

import Foundation

class PokemonController {
    
    var pokemon: [Pokemon] = []
    
    static let sharedController = PokemonController()
    
    static func getOnePokemon(pokemonNumber: String, completion: @escaping (_ results: Pokemon?) -> Void) {
        let url = NetworkController.getOnePokemonByURL(pokemonNumber: pokemonNumber)
        NetworkController.dataAtURL(url) { (data) in
            guard let resultsData = data
                else {
                    print("NO DATA RETURNED")
                    completion(nil)
                    return
            }
            do {
                let pokemon = try JSONDecoder().decode(Pokemon.self, from: resultsData as Data)
                completion(pokemon)
            } catch let jsonError {
                print("Error decoding JSON \(jsonError)")
            }
        }
    }
    
    
    
    
//    static func getPokemon(pokemonName: String, completion:@escaping (_ result: Pokemon?) -> Void) {
//
//        let url = NetworkController.getPokemonByURL(pokemonName: pokemonName, completion: {_ in
//
//        NetworkController.dataAtURL(url: url) { (resultData) in
//
//            guard let resultData = resultData else {
//                print("no data returned")
//                completion(nil)
//                return
//            }
//
//        }
//        })
//
//    }
    
}
