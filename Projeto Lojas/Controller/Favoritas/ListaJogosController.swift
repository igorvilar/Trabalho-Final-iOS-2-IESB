//
//  ListaJogosController.swift
//  Projeto Lojas
//
//  Created by Igor Vilar on 14/11/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import RealmSwift
import Realm

class ListaJogosController {
    
    
    func listaJogos(nomeLoja : String) -> Array<Loja> {
        do {
            return Array((try Realm().objects(Usuario.self)[0].listasFavoritos.filter("nome == '\(nomeLoja)'").first?.lojas)!)
        } catch {
            return Array<Loja>.init()
        }
    }
    
}
