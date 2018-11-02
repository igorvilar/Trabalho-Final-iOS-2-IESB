//
//  CadastroTableViewController.swift
//  Projeto Lojas
//
//  Created by Renê Xavier on 06/09/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import UIKit

class CadastroTableViewController: UITableViewController {

    @IBOutlet weak var botaoCadastro: UIButton!
    
    @IBOutlet var nome: UITextField!
    @IBOutlet var email: UITextField!
    @IBOutlet var senha: UITextField!
    @IBOutlet var telefone: UITextField!
    @IBOutlet var idade: UITextField!
    
    let controller = CadastroController();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        botaoCadastro.layer.cornerRadius = 16.5
    }

    @IBAction func fecharCadastro() {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cadastrar(_ sender: Any) {
            
        let usuario = Usuario()
        
        usuario.nome = nome.text!
        usuario.email = email.text!
        usuario.senha = senha.text!
        usuario.telefone = telefone.text!
        usuario.idade = (Int(idade.text!))!
        usuario.foto = "user-logo"
        
        let isSaved = controller.cadastrar(usuario)
        
        if(isSaved){
            fecharCadastro()
        }
        
    }
}
