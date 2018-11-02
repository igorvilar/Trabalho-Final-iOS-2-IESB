//
//  CadastroController.swift
//  Projeto Lojas
//
//  Created by Savio Silva on 02/11/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import RealmSwift
import Realm

class CadastroController{
    
    func cadastrar(_ usuario: Usuario) -> Bool{
        
        do {
            let realm = try! Realm()
            
            try! realm.write {
                realm.create(Usuario.self, value:usuario, update: true)
                // realm.add(usuario)
            }
            
            return true
            
        } catch {
            print("erro ao Cadastrar")
            return false
        }
    }
}
