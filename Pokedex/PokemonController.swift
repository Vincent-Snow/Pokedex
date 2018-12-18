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
    
    
    
    
    
    static func getPokemon(pokemonName: String, completion:@escaping (_ result: Pokemon?) -> Void) {
        
        let url = NetworkController.getPokemon(pokemonName: pokemonName)
        
        NetworkController.dataAtURL(url: url) { (resultData) in
        
//            guard let resultData = resultData else {
//                print("no data returned")
//                completion(nil)
//                return
//            }
            
            
        }
        
    }
    
}
