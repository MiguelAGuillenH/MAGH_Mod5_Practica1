//
//  PokemonDetailViewController.swift
//  MAGH_Mod5_Tarea1
//
//  Created by MAGH on 03/03/24.
//

import UIKit

class PokemonDetailViewController: UIViewController {

    var receivedPokemon : Pokemon?
    
    @IBOutlet weak var pokemonDetailName: UILabel!
    @IBOutlet weak var pokemonDetailImage: UIImageView!
    @IBOutlet weak var pokemonDetailAbility: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        pokemonDetailName.text = receivedPokemon!.name
        pokemonDetailImage.image = UIImage(named: receivedPokemon!.image)
        pokemonDetailAbility.text = "Ability: " + receivedPokemon!.ability
    }

    @IBAction func ButtonTapped(_ sender: Any) {
        dismiss(animated: true)
    }
    
}
