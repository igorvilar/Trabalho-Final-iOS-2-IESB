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
    
    
    func listaJogos() -> Array<Produto> {
        do {
            return Array(try Realm().objects(Produto.self))
        } catch {
            return Array<Produto>.init()
        }
    }
    
}
