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
    
    var name: String = ""
    var type: [String] = []
    var icon: UIImage = UIImage(named: "")!
    //    let evolutions: [Pokemon]? = []
    
//    init(icon: UIImage) {
//
//        self.icon = icon
//
//    }

    init?(json: [String : AnyObject]) {
        guard let name = json["name"] as? String, let type = json["name"] as? [String] else { return nil }
        
        let icon = json["front_default"]
        self.name = name
        self.type = type
        
        if let pIcon = icon as? UIImage {
            self.icon = pIcon
        }
        

    }
    
}
