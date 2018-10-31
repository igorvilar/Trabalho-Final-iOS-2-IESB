//
//  PerfilController.swift
//  Projeto Lojas
//
//  Created by Celso Rodrigues on 30/10/2018.
//  Copyright © 2018 com.iesb. All rights reserved.
//
import RealmSwift
import Realm

class PerfilController {
    var todasAsLojas: Results<Loja>?
    var lojasFiltradas: Results<Loja>?
    var filtro: String = ""
    
    func selectUsuario() -> Usuario?{
        do {
            let usuario = try Realm().objects(Usuario.self)
            return usuario[0]
        } catch {
            print("erro")
            return nil
        }
    }
}
