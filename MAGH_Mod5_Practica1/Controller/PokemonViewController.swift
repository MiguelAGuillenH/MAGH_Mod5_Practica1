//
//  PokemonViewController.swift
//  MAGH_Mod5_Tarea1
//
//  Created by MAGH on 02/03/24.
//

import UIKit

class PokemonViewController: UIViewController {

    @IBOutlet weak var PokemonTableView: UITableView!
    let pokemonDataManager = PokemonDataManager()
    var selectedPokemon : Pokemon?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        pokemonDataManager.fetch()
    }

}

extension PokemonViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokemonDataManager.countPokemons()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pokemonCell", for: indexPath) as! PokemonCell
        let pokemon = pokemonDataManager.getPokemon(at: indexPath.row)
        cell.pokemonImage.image = UIImage(named: pokemon.image)
        cell.pokemonLabel.text = pokemon.name
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Pokedex"
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedPokemon = pokemonDataManager.getPokemon(at: indexPath.row)
        self.performSegue(withIdentifier: "pokemonDetailSegue", sender: Self.self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! PokemonDetailViewController
        destination.receivedPokemon = selectedPokemon
    }
    
}
