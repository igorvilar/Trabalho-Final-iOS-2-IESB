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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        botaoCadastro.layer.cornerRadius = 16.5
    }

    @IBAction func fecharCadastro() {
        self.dismiss(animated: true, completion: nil)
    }
}
