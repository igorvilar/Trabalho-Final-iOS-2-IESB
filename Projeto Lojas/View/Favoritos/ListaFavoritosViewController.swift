//
//  ListaFavoritosViewController.swift
//  Projeto Lojas
//
//  Created by Renê Xavier on 27/09/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import UIKit

class ListaFavoritosViewController: UIViewController {

    @IBOutlet weak var viewPrimeiraLista: UIView!
    @IBOutlet weak var viewSegundaLista: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewPrimeiraLista.layer.cornerRadius = 10
        viewPrimeiraLista.layer.shadowRadius = 8
        viewPrimeiraLista.layer.shadowOpacity = 0.5
        viewPrimeiraLista.layer.shadowOffset = CGSize(width: 5, height: 5)
        
        viewSegundaLista.layer.cornerRadius = 10
        viewSegundaLista.layer.shadowRadius = 8
        viewSegundaLista.layer.shadowOpacity = 0.5
        viewSegundaLista.layer.shadowOffset = CGSize(width: 5, height: 5)
    }
}
