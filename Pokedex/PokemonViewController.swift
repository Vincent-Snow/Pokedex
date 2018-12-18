//
//  PokemonViewController.swift
//  Pokedex
//
//  Created by Vincent Snow on 12/17/18.
//  Copyright © 2018 Vincent Snow. All rights reserved.
//

import UIKit

class PokemonViewController: UIViewController {

    @IBOutlet weak var searchTextField: UIButton!
    @IBOutlet weak var resultsLabel: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func searchPressed(_ sender: Any) {
    }

    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    

}
