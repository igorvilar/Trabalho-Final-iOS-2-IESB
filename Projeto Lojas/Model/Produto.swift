//
//  Produto.swift
//  Projeto Lojas
//
//  Created by Renê Xavier on 03/10/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import Foundation
import Realm
import RealmSwift


class Produto: Object {
    @objc dynamic var titulo: String = ""
    @objc dynamic var imagem: String = ""
    @objc dynamic var descricao: String = ""
    
    override static func primaryKey() -> String? {
        return "titulo"
    }
    
    convenience init(titulo: String, imagem: String, descricao: String) {
        self.init()
        self.titulo = titulo
        self.imagem = imagem
        self.descricao = descricao
    }
}
