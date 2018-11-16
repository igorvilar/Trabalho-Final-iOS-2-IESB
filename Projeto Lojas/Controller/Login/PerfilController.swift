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
    
    func selectUsuario(email : String, senha : String) -> Usuario?{
        do {
            filtro = "email == '" + email + "' AND senha == '" + senha + "'"
            let usuario = try Realm().objects(Usuario.self).filter(filtro).first
            return usuario
        } catch {
            print("erro")
            return nil
        }
    }
    
    func selectUsuario() -> Usuario?{
        do {
            let usuario = try Realm().objects(Usuario.self).first
            return usuario
        } catch {
            print("erro")
            return nil
        }
    }
    
    func verifyLogin(emailLogin : String, senhaLogin : String) -> Bool {
        do {
            filtro = "email == '" + emailLogin + "' AND senha == '" + senhaLogin + "'"
            if (try Realm().objects(Usuario.self).filter(filtro).first) != nil {
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
