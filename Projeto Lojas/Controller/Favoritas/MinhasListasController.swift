//
//  MinhasListasController.swift
//  Projeto Lojas
//
//  Created by Igor Vilar on 30/10/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import RealmSwift
import Realm

class MinhasListasController {

   
    func lojasFavoritas() -> Array<Favorito> {
        do {
            return Array(try Realm().objects(Usuario.self)[0].listasFavoritos)
        } catch {
            return Array<Favorito>.init()
        }
    }
    
}
