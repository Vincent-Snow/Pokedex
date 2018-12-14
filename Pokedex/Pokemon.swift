//
//  Pokemon.swift
//  Pokedex
//
//  Created by Vincent Snow on 10/7/18.
//  Copyright © 2018 Vincent Snow. All rights reserved.
//

import Foundation
import UIKit

class Pokemon {
    
    let name: String
    let hp: Int
    let type: [String]
    let icon: UIImage
    let evolutions: [Pokemon]?
    
    init(name: String, hp: Int, type: [String], icon: UIImage, evolutions: [Pokemon]?) {
        self.name = name
        self.hp = hp
        self.type = type
        self.icon = icon
        self.evolutions = evolutions
    }
    
}
