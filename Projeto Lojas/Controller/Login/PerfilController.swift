//
//  PerfilController.swift
//  Projeto Lojas
//
//  Created by Celso Rodrigues on 25/10/2018.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import RealmSwift
import Realm

class PerfilController {
    func buscaUsuario() -> Usuario? {
        do {
            return try Realm().objects(Usuario.self)[0]
        } catch {
            return nil
        }
    }
}
