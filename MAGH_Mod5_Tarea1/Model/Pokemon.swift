//
//  Pokemon.swift
//  MAGH_Mod5_Tarea1
//
//  Created by MAGH on 02/03/24.
//

import Foundation

struct Pokemon {
    let name : String
    let image : String
    let ability : String
    
    init(dict : [String : String]){
        self.name = dict["name"]!
        self.image = dict["image"]!
        self.ability = dict["ability"]!
    }
}
