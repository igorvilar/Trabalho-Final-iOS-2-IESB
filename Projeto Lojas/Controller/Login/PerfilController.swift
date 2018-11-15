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
    var email: String = ""
    var senha: String = ""
    
    func selectUsuario() -> Usuario?{
        do {
//            filtro = "email CONTAINS[cd] '" + email + "' AND senha CONTAINS[cd] '" + senha + "'"
//            let usuario = try Realm().objects(Usuario.self).filter(filtro)
            let usuario = try Realm().objects(Usuario.self)
            return usuario[0]
        } catch {
            print("erro")
            return nil
        }
    }
    
    func verifyLogin(emailLogin : String, senhaLogin : String) -> Bool {
        do {
            filtro = "email CONTAINS[cd] '" + emailLogin + "'" //AND senha CONTAINS[cd] '" + senhaLogin + "'"
            let usuario = try Realm().objects(Usuario.self).filter(filtro).first
            if  usuario?.email == email && usuario?.senha == senha {
                email.self = emailLogin
                senha.self = senhaLogin
                return true
            } else {
                print ("Usuário não encontrado")
                return false
            }
        } catch {
            print ("Erro ao validar o login")
            return false
        }
    }
}
