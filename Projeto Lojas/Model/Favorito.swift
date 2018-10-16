//
//  Favorito.swift
//  Projeto Lojas
//
//  Created by Renê Xavier on 03/10/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import Foundation
import Realm
import RealmSwift

class Favorito: Object {
    @objc dynamic var nome: String = ""
//    let lojas = List<Loja>()
    
    override static func primaryKey() -> String? {
        return "nome"
    }
    
    convenience init(nome: String) {
        self.init()
        self.nome = nome
//        self.lojas.append(objectsIn: lojas)
    }
}
