//
//  Usuario.swift
//  Projeto Lojas
//
//  Created by Renê Xavier on 03/10/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import Foundation
import Realm
import RealmSwift

class Usuario: Object {
    @objc dynamic var nome: String = ""
    @objc dynamic var foto: String = ""
    @objc dynamic var email: String = ""
    @objc dynamic var senha: String = ""
    @objc dynamic var telefone: String = ""
    @objc dynamic var idade: Int = 0
    var listasFavoritos = List<Favorito>()
    var lojasServidor = List<Loja>()
    
    override static func primaryKey() -> String? {
        return "email"
    }
    
    convenience init(nome: String,
                     foto: String,
                     email: String,
                     senha: String,
                     telefone: String,
                     idade: Int,
                     listasFavoritos: List<Favorito> = List<Favorito>(), lojasServidor: List<Loja> = List<Loja>()) {
        self.init()
        self.nome = nome
        self.foto = foto
        self.email = email
        self.senha = senha
        self.telefone = telefone
        self.idade = idade
        self.listasFavoritos = listasFavoritos
        self.lojasServidor = lojasServidor
    }
}
